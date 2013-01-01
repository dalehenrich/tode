as yet unclassified
frame
  | frameIndex |
  stackNode := self defaultHomeNode.
  frameIndex := tokens size > 1
    ifTrue: [ (tokens at: 2) asNumber ]
    ifFalse: [ self dbStack currentFrame frameIndex ].
  self dbStack navigateFrame: frameIndex.
  self dbStack edit: topez aspect: #'debug' windowId: nil.
  ^ (topez commands at: 'cd') block
    value: topez
    value: self stackNode
    value:
      {'cd'.
      (stackNode printString , frameIndex asString)}
    value: nil