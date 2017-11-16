as yet unclassified
terminateProcess
  processOop
    ifNotNil: [ :procOop | 
      processOop := nil.
      self debugTool ifNotNil: [ self debugTool debuggerClosing ].
      (self session sessionId > 0 and: [ procOop ~~ 20 ])
        ifTrue: [ 
          self session
            executeBlock: [ :aProcessOop | (Object _objectForOop: aProcessOop) terminate ]
            with: procOop ] ]