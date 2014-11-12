mount
mountFile: filePath at: objectPath as: nodeName visitAsLeafNode: visitAsLeafNode
  | gatewayNode root |
  gatewayNode := TDObjectGatewayNode new
    name: nodeName;
    contents:
        '|  filename parentDir |
  filename := ServerFileDirectory localNameFor: '
            , filePath printString
            ,
              '.
  parentDir := ServerFileDirectory forFileName: '
            , filePath printString
            ,
              '.
  parentDir directoryEntryFor: filename';
    visitAsLeafNode: visitAsLeafNode;
    yourself.
  self topez ensureChildrenExistIn: objectPath.
  root := self topez lookup: objectPath.
  root addChildNode: gatewayNode.
  gatewayNode printString = self topez homeNode printString
    ifTrue: [ self topez homeNodeReset ].
  ^ gatewayNode