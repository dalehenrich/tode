accessing
leafNodes
  leafNodes ifNil: [ leafNodes := leafNodesBlock value ].
  ^ leafNodes