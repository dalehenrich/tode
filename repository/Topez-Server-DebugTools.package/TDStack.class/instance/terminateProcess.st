as yet unclassified
terminateProcess
  process
    ifNotNil: [ :proc | 
      process := nil.
      self debugTool ifNotNil: [ self debugTool debuggerClosing ].
      proc terminate ]