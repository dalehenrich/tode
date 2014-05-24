accessing
leafNodes
  leafNodes ifNil: [ leafNodes := leafNodesBlock value asArray ].
  ^ leafNodes