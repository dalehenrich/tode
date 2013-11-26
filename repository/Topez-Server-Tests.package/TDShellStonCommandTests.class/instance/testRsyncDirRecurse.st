tests
testRsyncDirRecurse
  | stonTool command childNode tmpNode nodePath srcNode destNode rsync |
  nodePath := self rootNodePath.
  self topez ensureChildrenExistIn: nodePath.
  tmpNode := topez lookup: nodePath.
  srcNode := tmpNode addChild: 'src'.
  destNode := tmpNode addChild: 'dest'.
  self standardLeafNodes
    do: [ :childNode | 
      | srcPath |
      childNode
        modificationTime: childNode modificationTime - (Duration seconds: 5).
      srcNode addChildNode: childNode.
      srcPath := srcNode printString.
      srcPath := srcPath copyFrom: 1 to: srcPath size - 1.	"remove trailing / to copy directory to destination"
      command := TDCommandLine
        commandLine:
          'ston rsync --recursive ' , srcPath , ' ' , destNode printString
        redirectTarget: nil.
      command hasSubCommand: true.
      stonTool := topez toolInstanceFor: 'ston'.
      stonTool todeCommand: command.
      rsync := stonTool stonrsync.
      self
        validate: '/tmp/tests/ston/src/' , childNode name
        equals: '/tmp/tests/ston/dest/src/' , childNode name
        with: rsync.
      self
        validateModificationTimes: '/tmp/tests/ston/src/' , childNode name
        between: '/tmp/tests/ston/dest/src/' , childNode name
        match: false ]