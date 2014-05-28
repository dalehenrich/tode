visiting
acceptVisitor: aTDNodeVisitor proxiedBy: aLeafNodeProxy
  self visitAsLeafNode
    ifTrue: [ aTDNodeVisitor acceptLeafNode: aLeafNodeProxy ]
    ifFalse: [ aTDNodeVisitor acceptGatewayNode: aLeafNodeProxy ]