debug ops
dbContinue
  | processOop stack |
  stack := self theStack.
  processOop := stack processOop.
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder
    perform: #'dbContinue:'
    with: processOop.
  processResult isSymbol
    ifTrue: [ processTerminated := (self debugExceptionSymbols includes: processResult) not ]
    ifFalse: [ 
      processResult := self objectSerializer fromString: processResult.
      processTerminated := false ].
  self topez ensureSessionMethodsEnabled.
  stack resetFrames.
  ^ self dbFinishStep