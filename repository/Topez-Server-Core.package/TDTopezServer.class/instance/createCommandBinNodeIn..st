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
                    self commands at: newCommandNode name put: newCommandNode.
                    theNode addChildNode: newCommandNode ];
        removeBlock: [ :theNode :commandName | 
                    self commands removeKey: commandName.
                    theNode basicContents removeKey: commandName ];
        yourself.
    node addChildNode: binNode.
    ^ binNode