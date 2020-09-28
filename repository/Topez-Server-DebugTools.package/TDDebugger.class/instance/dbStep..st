debug ops
dbStep: stepDirective
  | level stepId processOop stack transcriptProxy clientMessage is360 |
  is360 := self _is360OrLater.
  stack := self theStack.
  processOop := self processOop.
  stepId := #(#'into' #'over' #'thru') indexOf: stepDirective.
  stepId == 1
    ifTrue: [ 
      is360
        ifTrue: [ level := 1 ]
        ifFalse: [ level := 0 ] ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  self topez disableSessionMethods.
  transcriptProxy := TranscriptProxy proxyTranscript.
  is360
    ifTrue: [ 
      clientMessage := #'dbStep_36x:forProcessOop:'.
      stepId == 2
        ifTrue: [ clientMessage := #'dbStepOver_36x:forProcessOop:' ].
      stepId == 3
        ifTrue: [ clientMessage := #'dbStepThrough_36x:forProcessOop:' ] ]
    ifFalse: [ 
      clientMessage := #'dbStep:forProcessOop:'.
      stepId == 3
        ifTrue: [ clientMessage := #'dbStepThrough:forProcessOop:' ] ].
  [ 
  TranscriptProxy registerTranscriptClientForwarder: nil.
  processResult := self topez topezClientForwarder
    perform: clientMessage
    withArguments:
      {level.
      processOop} ]
    ensure: [ TranscriptProxy registerTranscriptClientForwarder: transcriptProxy ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  stack resetFrames