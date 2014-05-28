visiting
acceptVisitor: aTDNodeVisitor
  self visitAsLeafNode
    ifTrue: [ aTDNodeVisitor acceptLeafNode: self ]
    ifFalse: [ aTDNodeVisitor acceptGatewayNode: self ]