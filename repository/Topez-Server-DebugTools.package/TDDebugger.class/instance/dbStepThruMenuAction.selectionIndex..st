menu actions
dbStepThruMenuAction: listElement selectionIndex: selectionIndex
  (self topez effectiveApiVersion < '1.4.0' asMetacelloVersionNumber
    or: [ (System stoneVersionReport at: 'gsVersion') asMetacelloVersionNumber
        < '3.4.0' asMetacelloVersionNumber ])
    ifTrue: [ self dbSetThruBreaksDuring: [ self dbStep: #'over' ] ]
    ifFalse: [ | level processOop stack transcriptProxy |
      stack := self theStack.
      processOop := self processOop.
      level := stack currentFrame frameIndex.
      self topez disableSessionMethods.
      transcriptProxy := TranscriptProxy proxyTranscript.
      [ TranscriptProxy registerTranscriptClientForwarder: nil.
      processResult := self topez topezClientForwarder
        perform: #'dbStep:forProcessOop:'
        withArguments: {level.
          processOop} ]
        ensure: [ TranscriptProxy registerTranscriptClientForwarder: transcriptProxy ].
      processTerminated := (self debugExceptionSymbols includes: processResult)
        not.
      self topez ensureSessionMethodsEnabled.
      stack resetFrames ].
  ^ self dbFinishStep