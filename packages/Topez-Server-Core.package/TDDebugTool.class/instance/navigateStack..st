as yet unclassified
navigateStack: increment
    stackNode := tokens size = 1
        ifTrue: [ topez currentNode ]
        ifFalse: [ topez lookup: (tokens at: 2) ].
    topez setCurrentNode: self stackNode.
    self stack navigateStack: increment.
    self stack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (self stack currentFrame frameIndex asString)}
        value: nil