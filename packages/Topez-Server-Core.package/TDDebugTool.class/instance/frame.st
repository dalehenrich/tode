as yet unclassified
frame
    | frameIndex stackPath |
    stackPath := tokens size > 2
        ifTrue: [ tokens at: 3 ]
        ifFalse: [ self defaultHomeStackPath ].
    stackNode := topez lookup: stackPath.
    frameIndex := tokens size > 1
        ifTrue: [ (tokens at: 2) asNumber ]
        ifFalse: [ self dbStack currentFrame frameIndex ].
    self dbStack navigateFrame: frameIndex.
    self dbStack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (stackNode printString , frameIndex asString)}
        value: nil