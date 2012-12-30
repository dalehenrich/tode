as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self dbStack navigateStack: increment.
  self dbStack currentFrame edit: topez windowId: nil.
  ^ (topez commands at: 'ds') block
    value: topez
    value: self stackNode
    value:
      {'ds'.
      (self dbStack currentFrame frameIndex asString)}
    value: nil