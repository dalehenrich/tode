as yet unclassified
createFrames
    | previous stackFrame |
    frames := OrderedCollection new.
    previous := nil.
    1 to: self process stackDepth do: [ :frameIndex | 
        stackFrame := TDStackFrame new
            stack: self;
            frameIndex: frameIndex;
            yourself.
        frames add: stackFrame.
        previous ifNotNil: [ previous next: stackFrame ].
        stackFrame previous: previous.
        previous := stackFrame ].
    currentFrame := frames at: 1.
    ^ frames