debug ops
dbStep: stepDirective
  | level stack through |
  stack := self theStack.
  through := 0.
  processResult := nil.
  [ 
  | remoteBlock |
  stepDirective == #'into'
    ifTrue: [ 
      remoteBlock := [ :processOop :aLevel | 
      | process |
      process := Object _objectForOop: processOop.
      process gciStepIntoFromLevel: aLevel.
      nil ] ]
    ifFalse: [ 
      level := stack currentFrame frameIndex.
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