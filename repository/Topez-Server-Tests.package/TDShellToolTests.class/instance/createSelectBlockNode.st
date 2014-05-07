as yet unclassified
createSelectBlockNode
  | tmpNode node |
  tmpNode := self createTempNodeNode.
  node := TDSmalltalkLeafNode new
    name: 'SELECT_BLOCK';
    contents: '[:definition | true ]';
    yourself.
  tmpNode addChildNode: node.
  ^ node