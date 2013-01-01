as yet unclassified
dbFinishStep: node
  | frameIndex |
  frameIndex := 1.
  stackNode := node.
  self dbStack navigateFrame: frameIndex.
  self dbStack currentFrame frameContents == nil
    ifTrue: [ ^ STON fromString: processResult ].
  self dbStack edit: topez aspect: #'debug' windowId: nil.
  ^ (topez commands at: 'cd') block
    value: topez
    value: self stackNode
    value:
      {'cd'.
      (stackNode printString , frameIndex asString)}
    value: nil