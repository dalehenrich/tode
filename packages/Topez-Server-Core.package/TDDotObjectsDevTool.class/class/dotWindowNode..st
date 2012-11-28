as yet unclassified
dotWindowNode: aTDTopezServer
    <topezNode: '.window'>
    | node |
    node := aTDTopezServer installChildrenAt: '/home'.
    node
        addChildNode:
            (TZObjectNode new
                name: '.window';
                listBlock: [ :winDir | #('model') ];
                elementBlock: [ :winDir :elementName :absentBlock | 
                            | serverModelOop |
                            elementName = 'model'
                                ifFalse: [ self error: 'no such element: ' , elementName printString ].
                            serverModelOop := winDir topez topezClientForwarder activeWindowServerModel.
                            Transcript
                                cr;
                                show: 'dotWindowNode: [0]: ' , serverModelOop printString.
                            TZLeafNode new
                                name: 'model';
                                contents: serverModelOop printString;
                                yourself ];
                addBlock: [ :winDir :commandName :block |  ];
                removeBlock: [ :winDir :commandName |  ];
                yourself)