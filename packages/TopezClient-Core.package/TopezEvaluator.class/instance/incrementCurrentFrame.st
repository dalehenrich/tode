frame
incrementCurrentFrame
    | stack |
    currentFrame := currentFrame + 1.
    stack := exception stack indexed.
    currentFrame > stack size
        ifTrue: [ currentFrame := stack size ].
    ^ stack at: currentFrame