debug ops
dbStep: stepDirective
  | level stepId processOop stack transcriptProxy clientMessage |
  stack := self theStack.
  processOop := self processOop.
  stepId := #(#'into' #'over' #'thru') indexOf: stepDirective.
  stepId == 1
    ifTrue: [ level := 0 ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  self topez disableSessionMethods.
  transcriptProxy := TranscriptProxy proxyTranscript.
  clientMessage := #'dbStep:forProcessOop:'.
  stepId == 3
    ifTrue: [ clientMessage := #'dbStepThrough:forProcessOop:' ].
  [ TranscriptProxy registerTranscriptClientForwarder: nil.
  processResult := self topez topezClientForwarder
    perform: clientMessage
    withArguments: {level.
      processOop} ]
    ensure: [ TranscriptProxy registerTranscriptClientForwarder: transcriptProxy ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames