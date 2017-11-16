accessing
frames
    frames ifNil: [ frames := self createFrames ].
    ^ frames