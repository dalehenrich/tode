as yet unclassified
createFrames
  | next stackFrame stackDepth |
  frames := OrderedCollection new.
  self process == nil
    ifTrue: [ ^ frames ].
  next := nil.
  stackDepth := self process stackDepth.
  stackDepth to: 1 by: -1 do: [ :frameIndex | stackFrame := self stackFrameClass new
      stack: self;
      frameIndex: frameIndex;
      yourself.
    frames addFirst: stackFrame.
    next ifNotNil: [ next previous: stackFrame ].
    stackFrame next: next.
    next := stackFrame ].
  stackDepth > 0
    ifTrue: [ self trimmed
        ifTrue: [ currentFrame := frames at: 1 ]
        ifFalse: [ currentFrame := self signallerFrame: (frames at: 1).
          (currentFrame ~~ nil and: [ currentFrame frameIndex ~~ 1 ])
            ifTrue: [ currentFrame := currentFrame next ] ] ].
  ^ frames