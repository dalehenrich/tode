as yet unclassified
mount: directoryPath at: objectPath as: nodeName
  | gatewayNode root |
  gatewayNode := TDObjectGatewayNode new
    name: nodeName;
    contents: 'ServerFileDirectory on: ' , directoryPath printString;
    yourself.
  self topez ensureChildrenExistIn: objectPath.
  root := self topez lookup: objectPath.
  root addChildNode: gatewayNode.
  ^ gatewayNode