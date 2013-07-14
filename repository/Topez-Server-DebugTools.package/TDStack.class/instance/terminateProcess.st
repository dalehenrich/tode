as yet unclassified
terminateProcess
  process
    ifNotNil: [ :proc | 
      process := nil.
      proc terminate ]