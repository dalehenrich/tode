as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self dbStack navigateStack: increment.
  self dbStack edit: topez aspect: #'debug' windowId: nil.
  ^ (topez commands at: 'cd') block
    value: topez
    value: self stackNode
    value:
      {'cd'.
      (self dbStack currentFrame frameIndex asString)}
    value: nil