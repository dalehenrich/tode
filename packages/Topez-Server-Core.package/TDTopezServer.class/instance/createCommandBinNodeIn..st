accessing
createCommandBinNodeIn: node
    | binNode |
    binNode := TDPluggableNode new
        name: 'bin';
        listBlock: [ :theNode | (theNode basicContents values sort: [ :a :b | a name <= b name ]) collect: [ :each | each renderNameText ] ];
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