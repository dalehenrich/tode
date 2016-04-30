debug ops
dbContinue
  | processOop stack |
  stack := self theStack.
  processOop := stack process asOop.
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder dbContinue: processOop.
  processResult isString
    ifTrue: [ 
      processResult := self objectSerializer fromString: processResult.
      processTerminated := false ]
    ifFalse: [ processTerminated := (self debugExceptionSymbols includes: processResult) not ].
  self topez ensureSessionMethodsEnabled.
  stack resetFrames.
  ^ self dbFinishStep