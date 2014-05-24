debug ops
dbStep: stepDirective
  | level stepId processOop stack transcriptProxy |
  stack := self theStack.
  processOop := stack process asOop.
  stepId := #(#'into' #'over') indexOf: stepDirective.
  stepId == 1
    ifTrue: [ level := 0 ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  self topez disableSessionMethods.
  transcriptProxy := TranscriptProxy proxyTranscript.
  [ 
  TranscriptProxy registerTranscriptClientForwarder: nil.
  processResult := self topez topezClientForwarder
    dbStep: level
    forProcessOop: processOop ]
    ensure: [ TranscriptProxy registerTranscriptClientForwarder: transcriptProxy ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames