frame
incrementCurrentFrame
    | stack |
    self currentFrame: self currentFrame + 1.
    stack := exception stack indexed.
    self currentFrame > stack size
        ifTrue: [ self currentFrame: stack size ].
    ^ stack at: self currentFrame