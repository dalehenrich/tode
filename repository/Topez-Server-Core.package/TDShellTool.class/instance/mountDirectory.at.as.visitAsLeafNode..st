mount
mountDirectory: directoryPath at: objectPath as: nodeName visitAsLeafNode: visitAsLeafNode
  | gatewayNode root |
  gatewayNode := TDObjectGatewayNode new
    name: nodeName;
    contents: 'ServerFileDirectory on: ' , directoryPath printString;
    visitAsLeafNode: visitAsLeafNode;
    yourself.
  self topez ensureChildrenExistIn: objectPath.
  root := self topez lookup: objectPath.
  root addChildNode: gatewayNode.
  gatewayNode printString = self topez homeNode printString
    ifTrue: [ self topez homeNodeReset ].
  ^ gatewayNode