proxy frame
incrementCurrentFrame
    | stack |
    self currentFrameIndex: self currentFrameIndex + 1.
    stack := exception stack indexed.
    self currentFrameIndex > stack size
        ifTrue: [ self currentFrameIndex: stack size ].
    ^ stack at: self currentFrameIndex