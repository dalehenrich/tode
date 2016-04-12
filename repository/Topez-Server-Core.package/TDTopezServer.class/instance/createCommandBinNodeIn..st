accessing
createCommandBinNodeIn: node
  | binNode |
  binNode := TDPluggableNode new
    name: 'bin';
    basicContents: Dictionary new;
    elementExtensionBlock: [ :theNode :elementName | theNode class executableExtension ];
    elementRenderAttributeBlock: [ :theNode :elementName | theNode class scriptTextAttributes ];
    listBlock: [ :theNode | theNode basicContents keys asArray sort ];
    elementBlock: [ :theNode :elementName :absentBlock | theNode basicContents at: elementName ];
    addBlock: [ :theNode :newCommandNode | 
          TDTopezServer commands at: newCommandNode name put: newCommandNode.
          theNode _addBasicChildNode: newCommandNode ];
    removeBlock: [ :theNode :commandName | 
          TDTopezServer commands removeKey: commandName.
          theNode basicContents removeKey: commandName ];
    yourself.
  node _addBasicChildNode: binNode.
  ^ binNode