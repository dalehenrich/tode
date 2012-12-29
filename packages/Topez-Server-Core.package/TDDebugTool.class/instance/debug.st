as yet unclassified
debug
  | stack stackPath debugNode baseNode path defaultNodeName destinationNode |
  debugNode := self topez lookup: self defaultStackPath.
  stackPath := tokens size > 1
    ifTrue: [ tokens at: 2 ]
    ifFalse: [ self defaultHomeStackPath ].
  baseNode := topez baseNodeFor: stackPath.
  path := stackPath findTokens: '/'.
  defaultNodeName := path last.
  path := path copyFrom: 1 to: path size - 1.
  destinationNode := baseNode lookupPath: path ifAbsent: [ ^ self error: 'Node does not exist: ' , stackPath ].
  stackNode := destinationNode childNamed: defaultNodeName ifAbsent: [  ].
  stackNode ~~ nil
    ifTrue: [ destinationNode removeChildNode: stackNode ].
  stackNode := debugNode cp: stackPath in: baseNode.
  topez setCurrentNode: stackNode.
  self dbStack currentFrame edit: topez windowId: nil.
  ^ (topez commands at: 'ds') block
    value: topez
    value: stackNode
    value:
      {'ds'.
      (stackNode printString)}
    value: nil