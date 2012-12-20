as yet unclassified
navigateStack: increment
    | stackPath |
    stackPath := tokens size > 1
        ifTrue: [ tokens at: 2 ]
        ifFalse: [ self defaultHomeStackPath ].
    stackNode := topez lookup: stackPath.
    topez setCurrentNode: self stackNode.
    self dbStack navigateStack: increment.
    self dbStack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (stackNode printString , self dbStack currentFrame frameIndex asString)}
        value: nil