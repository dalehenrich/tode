*tode-gemstone-remote340-server
dbStep: stepDirective
  | stack remoteBlock level |
  stack := self theStack.
  processResult := nil.
  level := stack currentFrame frameIndex.
  stepDirective == #'into'
    ifTrue: [ 
      remoteBlock := [ :processOop :aLevel | 
      | process |
      process := Object _objectForOop: processOop.
      process gciStepIntoFromLevel: aLevel.
      nil ] ]
    ifFalse: [ 
      stepDirective == #'thru'
        ifTrue: [ 
          remoteBlock := [ :processOop :aLevel | 
          | process |
          process := Object _objectForOop: processOop.
          process gciStepThruFromLevel: aLevel.
          nil ] ]
        ifFalse: [ 
          remoteBlock := [ :processOop :aLevel | 
          | process |
          process := Object _objectForOop: processOop.
          process gciStepOverFromLevel: aLevel.
          nil ] ] ].
  [ 
  processResult := nil.
  self session executeBlock: remoteBlock with: self processOop with: level ]
    on: TDExceptionDuringStep
    do: [ :ex | 
      ex processOop ~~ self processOop
        ifTrue: [ 
          "An error for another process -- open another debugger"
          ^ ex pass ].
      processResult := ex breakpointKind ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  stack resetFrames