tests
testGsFlushCaches
  self evaluateCommandString: 'gs --help flushCaches'.
  false
    ifTrue: [ 
      "this empties the object log ... we're saving stacks in the object during SmalltalkCI tests ... don't do this"
      self evaluateCommandString: 'gs flushCaches' ]