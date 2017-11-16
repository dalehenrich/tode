private
createFrames
  | level framesArr aFrame frames next stack |
  stack := self stackClass new
    process: GsProcess _current;
    yourself.
  framesArr := {}.
  level := 1.
  [ (aFrame := GsProcess _frameContentsAt: level + 1) ~~ nil ]
    whileTrue: [ framesArr at: level put: aFrame.
      level := level + 1 ].
  frames := OrderedCollection new.
  next := nil.
  framesArr size to: 1 by: -1 do: [ :index | | frame |
    frame := self stackFrameClass new
      frameIndex: index;
      frameContents: (framesArr at: index);
      stack: stack;
      yourself.
    frames addFirst: frame.
    next ifNotNil: [ next previous: frame ].
    frame next: next.
    next := frame ].
  stack frames: frames.
  ^ frames