accessing
sessionTempsNode
  | tmpPath tmpNode sessionTempsNode sessionTempsPath sessionTempsName |
  tmpPath := '/tmp/'.
  sessionTempsName := 'sessionTemps'.
  sessionTempsPath := tmpPath , sessionTempsName.
  ^ self
    lookup: sessionTempsPath
    ifAbsent: [ 
      self ensureChildrenExistIn: tmpPath.
      tmpNode := self lookup: tmpPath.
      sessionTempsNode := TDSessionTempNode new
        name: sessionTempsName;
        readMe:
            'Objects stored in this node will not survive beyond this session.';
        yourself.
      tmpNode addChildNode: sessionTempsNode ]