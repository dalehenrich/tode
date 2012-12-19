as yet unclassified
step
    "db step [into|over] [stack-path]"

    | stackPath frameIndex stepDirective |
    frameIndex := 1.
    stepDirective := 'over'.
    tokens size > 2
        ifTrue: [ 
            | token tokenLimit |
            token := tokens at: 3.
            tokenLimit := 3.
            (#('into' 'over') includes: token)
                ifTrue: [ 
                    stepDirective := token.
                    tokenLimit := 4 ].
            stackPath := tokens size >= tokenLimit
                ifTrue: [ tokens at: tokenLimit ]
                ifFalse: [ self defaultStackPath ] ]
        ifFalse: [ stackPath := self defaultStackPath ].
    self dbStep: stepDirective for: stackPath.
    stackNode := topez lookup: stackPath.
    self dbStack navigateFrame: frameIndex.
    self dbStack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (stackNode printString , frameIndex asString)}
        value: nil