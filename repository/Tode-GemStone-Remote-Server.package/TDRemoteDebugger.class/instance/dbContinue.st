debug ops
dbContinue
  | processOop stack |
  stack := self theStack.
  processOop := stack processOop.
  [ 
  processResult := nil.
  self session continue: processOop ]
    on: TDExceptionDuringStep
    do: [ :ex | 
      ex processOop ~~ self processOop
        ifTrue: [ 
          "An error for another process -- open another debugger"
          ^ ex pass ].
      processResult := ex breakpointKind ].
  processTerminated := (self debugExceptionSymbols includes: processResult) not.
  stack resetFrames.
  ^ self dbFinishStep