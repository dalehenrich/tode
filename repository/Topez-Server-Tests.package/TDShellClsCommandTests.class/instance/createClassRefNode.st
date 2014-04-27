as yet unclassified
createClassRefNode
  | tmpNode node |
  tmpNode := self createTempNodeNode.
  node := TDSmalltalkLeafNode new
    name: 'CLASS_REF';
    contents: self mockClassName;
    yourself.
  tmpNode addChildNode: node.
  ^ node