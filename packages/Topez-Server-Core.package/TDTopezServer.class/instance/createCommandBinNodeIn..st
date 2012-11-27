accessing
createCommandBinNodeIn: node
    | binNode |
    binNode := TZObjectNode new
        name: 'bin';
        extension: '*';
        listBlock: [ :objNode | objNode basicContents keys sorted ];
        elementBlock: [ :objNode :elementName :absentBlock | objNode basicContents at: elementName ];
        addBlock: [ :objNode :commandName :block | 
                    self commands at: commandName put: block.
                    objNode
                        addChildNode:
                            (TZBinLeafNode new
                                name: commandName;
                                contents: block _sourceString;
                                yourself) ];
        removeBlock: [ :objNode :commandName | 
                    self commands removeKey: commandName.
                    objNode basicContents removeKey: commandName ];
        yourself.
    node addChildNode: binNode.
    ^ binNode