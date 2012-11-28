accessing
createCommandBinNodeIn: node
    | binNode |
    binNode := TDBlockNode new
        name: 'bin';
        extension: '*';
        listBlock: [ :theNode | theNode basicContents keys sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | theNode basicContents at: elementName ];
        addBlock: [ :theNode :commandName :block | 
                    self commands at: commandName put: block.
                    theNode
                        addChildNode:
                            (TDBinLeafNode new
                                name: commandName;
                                contents: block _sourceString;
                                yourself) ];
        removeBlock: [ :theNode :commandName | 
                    self commands removeKey: commandName.
                    theNode basicContents removeKey: commandName ];
        yourself.
    node addChildNode: binNode.
    ^ binNode