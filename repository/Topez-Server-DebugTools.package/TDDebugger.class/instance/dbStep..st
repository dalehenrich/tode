debug ops
dbStep: stepDirective
  | level stepId processOop stack transcriptProxy clientMessage is360 |
  is360 := self _is360OrLater.
  (ObjectLogEntry trace: 'dbStep: [1]' object: stepDirective) addToLog.
  stack := self theStack.
  processOop := self processOop.
  stepId := #(#'into' #'over' #'thru') indexOf: stepDirective.
  (ObjectLogEntry trace: 'dbStep: [2]' object: stepId) addToLog.
  stepId == 1
    ifTrue: [ 
      is360
        ifTrue: [ level := 1 ]
        ifFalse: [ level := 0 ] ]
    ifFalse: [ level := stack currentFrame frameIndex ].
  (ObjectLogEntry trace: 'dbStep: [3]' object: level) addToLog.
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
  (ObjectLogEntry trace: 'dbStep: [4]' object: clientMessage) addToLog.
  processResult := self topez topezClientForwarder
    perform: clientMessage
    withArguments:
      {level.
      processOop} ]
    ensure: [ TranscriptProxy registerTranscriptClientForwarder: transcriptProxy ].
  (ObjectLogEntry trace: 'dbStep: [5]' object: processResult) addToLog.
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  self topez ensureSessionMethodsEnabled.
  (ObjectLogEntry trace: 'dbStep: [6]' object: processTerminated) addToLog.
  stack resetFrames.
  (ObjectLogEntry trace: 'dbStep: [7] DONE') addToLog