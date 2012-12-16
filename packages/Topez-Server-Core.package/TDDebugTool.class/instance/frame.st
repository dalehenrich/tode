as yet unclassified
frame
    | frameIndex |
    stackNode := topez currentNode.
    frameIndex := (tokens at: 2) asNumber.
    self stack navigateFrame: frameIndex.
    ^ (topez commands at: 'ds') block
        value: topez
        value: self stackNode
        value:
            {'ds'.
            (frameIndex asString)}
        value: nil