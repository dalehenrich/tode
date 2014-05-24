as yet unclassified
createSenderNode
  | tmpNode node |
  tmpNode := self createTempNodeNode.
  node := TDSmalltalkLeafNode new
    name: 'SENDER_NODE';
    contents: '| d |
d := Dictionary new.
d at: 1 put: 1';
    yourself.
  tmpNode addChildNode: node.
  ^ node