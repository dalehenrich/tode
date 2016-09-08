as yet unclassified
terminateProcess
  processOop
    ifNotNil: [ :proc | 
      processOop := nil.
      self debugTool ifNotNil: [ self debugTool debuggerClosing ].
      proc terminate ]