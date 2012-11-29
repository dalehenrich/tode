accessing
createCommandBinNodeIn: node
    | binNode |
    binNode := TDBlockNode new
        name: 'bin';
        listBlock: [ :theNode | (theNode basicContents values collect: [ :each | each name , each extension ]) sorted ];
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