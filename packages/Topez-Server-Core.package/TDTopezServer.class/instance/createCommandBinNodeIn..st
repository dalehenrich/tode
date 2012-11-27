accessing
createCommandBinNodeIn: node
    | binNode |
    binNode := TZObjectNode new
        name: 'bin';
        extension: '*';
        listBlock: [ :binDir | binDir basicContents keys sorted ];
        elementBlock: [ :binDir :elementName :absentBlock | binDir basicContents at: elementName ];
        addBlock: [ :binDir :commandName :block | 
                    self commands at: commandName put: block.
                    binDir basicContents
                        at: commandName
                        put:
                            (TZBinLeafNode new
                                name: commandName;
                                contents: block _sourceString;
                                yourself) ];
        removeBlock: [ :binDir :commandName | 
                    self commands removeKey: commandName.
                    binDir basicContents removeKey: commandName ];
        yourself.
    node addChildNode: binNode.
    ^ binNode