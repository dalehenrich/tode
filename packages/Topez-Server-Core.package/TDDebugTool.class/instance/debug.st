as yet unclassified
debug
  "debug"

  | stack |
  topez := self topez spawnWindow.
  stackNode := self topez lookup: self haloStackPath.
  topez homeNode: stackNode.
  false
    ifTrue: [ self dbStack currentFrame edit: topez windowId: nil ].
  ^ (topez commands at: 'ds') block
    value: topez
    value: stackNode
    value:
      {'ds'.
      'stack'}
    value: nil