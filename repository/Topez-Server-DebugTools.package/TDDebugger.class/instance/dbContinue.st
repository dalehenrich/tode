debug ops
dbContinue
  | processOop stack ans |
  stack := self theStack.
  processOop := stack processOop.
  (ObjectLogEntry
    trace: 'dbContinue [1]'
    object:
      {stack.
      processOop}) addToLog.
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder
    perform: #'dbContinue:'
    with: processOop.
  (ObjectLogEntry trace: 'dbContinue [2]' object: processResult) addToLog.
  processResult isSymbol
    ifTrue: [ 
      processTerminated := (self debugExceptionSymbols includes: processResult) not.
      (ObjectLogEntry trace: 'dbContinue [3]' object: processTerminated)
        addToLog ]
    ifFalse: [ 
      processResult := self objectSerializer fromString: processResult.
      processTerminated := false.
      (ObjectLogEntry
        trace: 'dbContinue [4]'
        object:
          {processResult.
          processTerminated}) addToLog ].
  self topez ensureSessionMethodsEnabled.
  stack resetFrames.
  ans := self dbFinishStep.
  (ObjectLogEntry trace: 'dbContinue [5]' object: ans) addToLog.
  ^ ans