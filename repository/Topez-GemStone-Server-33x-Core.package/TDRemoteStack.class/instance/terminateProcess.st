as yet unclassified
terminateProcess
  processOop
    ifNotNil: [ :proc | 
      processOop := nil.
      self debugTool ifNotNil: [ self debugTool debuggerClosing ].
      self session sessionId > 0
        ifTrue: [ 
          self session
            executeBlock: [ :aProcessOop | (Object _objectForOop: aProcessOop) terminate ]
            with: self processOop ] ]