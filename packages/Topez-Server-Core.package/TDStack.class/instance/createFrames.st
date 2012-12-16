as yet unclassified
createFrames
    frames := OrderedCollection new.
    1 to: self process stackDepth do: [ :frameIndex | 
        | stackFrame |
        stackFrame := TDStackFrame new
            stack: self;
            frameIndex: frameIndex;
            yourself.
        frames add: stackFrame ].
    ^ frames