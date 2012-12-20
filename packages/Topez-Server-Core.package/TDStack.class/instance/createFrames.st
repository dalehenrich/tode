as yet unclassified
createFrames
  | previous stackFrame stackDepth |
  frames := OrderedCollection new.
  self process == nil
    ifTrue: [ ^ frames ].
  previous := nil.
  stackDepth := self process stackDepth.
  1 to: stackDepth do: [ :frameIndex | 
    stackFrame := TDStackFrame new
      stack: self;
      frameIndex: frameIndex;
      yourself.
    frames add: stackFrame.
    previous ifNotNil: [ previous next: stackFrame ].
    stackFrame previous: previous.
    previous := stackFrame ].
  stackDepth > 0
    ifTrue: [ currentFrame := frames at: 1 ].
  ^ frames