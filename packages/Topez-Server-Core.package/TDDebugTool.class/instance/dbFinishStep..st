as yet unclassified
dbFinishStep: stackPath
    | frameIndex |
    frameIndex := 1.
    stackNode := topez lookup: stackPath.
    self dbStack navigateFrame: frameIndex.
    self dbStack currentFrame frameContents == nil
        ifTrue: [ ^ STON fromString: processResult ].
    self dbStack currentFrame edit: topez windowId: nil.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (stackNode printString , frameIndex asString)}
        value: nil