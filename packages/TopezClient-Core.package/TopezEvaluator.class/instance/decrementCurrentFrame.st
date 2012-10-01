frame
decrementCurrentFrame
    currentFrame := currentFrame - 1.
    currentFrame < 1
        ifTrue: [ currentFrame := 1 ].
    ^ exception stack indexed at: currentFrame