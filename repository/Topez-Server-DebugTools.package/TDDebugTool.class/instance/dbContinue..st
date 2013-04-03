as yet unclassified
dbContinue: node
  | processOop stack |
  stackNode := node.
  stack := node basicContents stack.
  processOop := stack process asOop.
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder dbContinue: processOop.
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames.
  ^ self dbFinishStep: stackNode