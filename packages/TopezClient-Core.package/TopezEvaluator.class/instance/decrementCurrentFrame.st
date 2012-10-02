frame
decrementCurrentFrame
    self currentFrame: self currentFrame - 1.
    self currentFrame < 1
        ifTrue: [ self currentFrame: 1 ].
    ^ exception stack indexed at: self currentFrame