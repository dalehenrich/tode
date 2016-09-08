as yet unclassified
createFrames
  | previous stackFrame stackDepth |
  frames := OrderedCollection new.
  self processOop == nil
    ifTrue: [ ^ frames ].
  previous := nil.
  stackDepth := self session
    executeBlock: [ :aProcessOop | (Object _objectForOop: aProcessOop) stackDepth ]
    with: self processOop.
  1 to: stackDepth do: [ :frameIndex | 
    stackFrame := TDRemoteStackFrame new
      stack: self;
      frameIndex: frameIndex;
      session: self session;
      yourself.
    frames add: stackFrame.
    previous ifNotNil: [ previous next: stackFrame ].
    stackFrame previous: previous.
    previous := stackFrame ].
  stackDepth > 0
    ifTrue: [ 
      self trimmed
        ifTrue: [ currentFrame := frames at: 1 ]
        ifFalse: [ 
          currentFrame := self signallerFrame: (frames at: 1).
          (currentFrame ~~ nil and: [ currentFrame frameIndex ~~ 1 ])
            ifTrue: [ currentFrame := currentFrame next ] ] ].
  ^ frames