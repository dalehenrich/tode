as yet unclassified
dbFinishStep: node
  | frameIndex |
  frameIndex := 1.
  stackNode := node.
  self dbStack navigateFrame: frameIndex.
  self dbStack currentFrame frameContents == nil
    ifTrue: [ ^ STON fromString: processResult ].
  self dbStack edit: topez windowId: nil.
  ^ (topez commands at: 'ds') block
    value: topez
    value: self stackNode
    value:
      {'ds'.
      (stackNode printString , frameIndex asString)}
    value: nil