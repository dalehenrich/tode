as yet unclassified
createFilterBlockNode
  | tmpNode node |
  tmpNode := self createTempNodeNode.
  node := TDSmalltalkLeafNode new
    name: 'FILTER_BLOCK';
    contents: '[:definition | true ]';
    yourself.
  tmpNode addChildNode: node.
  ^ node