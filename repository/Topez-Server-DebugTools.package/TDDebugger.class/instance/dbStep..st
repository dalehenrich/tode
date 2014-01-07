debug ops
dbStep: stepDirective
  | level stepId processOop stack |
  stack := self theStack.
  stack := stackNode basicContents.
  processOop := stack process asOop.
  stepId := #(#'into' #'over') indexOf: stepDirective.
  stepId == 1
    ifTrue: [ level := 0 ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  self topez disableSessionMethods.
  processResult := self topez topezClientForwarder
    dbStep: level
    forProcessOop: processOop.
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames