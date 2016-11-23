private
createFrames
  | level framesArr aFrame frames previous stack |
  stack := TDStack new
    process: GsProcess _current;
    yourself.
  framesArr := {}.
  level := 1.
  [ (aFrame := GsProcess _frameContentsAt: level + 1) ~~ nil ]
    whileTrue: [ framesArr at: level put: aFrame.
      level := level + 1 ].
  frames := {}.
  previous := nil.
  1 to: framesArr size do: [ :index | | frame |
    frame := TDStackFrame new
      frameIndex: index;
      frameContents: (framesArr at: index);
      stack: stack;
      yourself.
    frames add: frame.
    previous ifNotNil: [ previous next: frame ].
    frame previous: previous.
    previous := frame ].
  stack frames: frames.
  ^ frames