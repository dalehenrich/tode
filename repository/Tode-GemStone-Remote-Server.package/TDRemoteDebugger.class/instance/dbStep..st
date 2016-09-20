debug ops
dbStep: stepDirective
  | level processOop stack through |
  stack := self theStack.
  processOop := self processOop.
  through := 0.
  stepDirective == #'into'
    ifTrue: [ level := 0 ]
    ifFalse: [ 
      level := stack currentFrame frameIndex.
      stepDirective == #'thru'
        ifTrue: [ through := 1 ] ].
  self topez disableSessionMethods.
  processResult := nil.
  [ self session step: processOop level: level through: through ]
    on: TDExceptionDuringStep
    do: [ :ex | processResult := ex breakpointKind ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  stack resetFrames