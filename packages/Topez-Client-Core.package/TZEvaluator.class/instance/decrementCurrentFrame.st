proxy frame
decrementCurrentFrame
    self currentFrameIndex: self currentFrameIndex - 1.
    self currentFrameIndex < 1
        ifTrue: [ self currentFrameIndex: 1 ].
    ^ exception stack indexed at: self currentFrameIndex