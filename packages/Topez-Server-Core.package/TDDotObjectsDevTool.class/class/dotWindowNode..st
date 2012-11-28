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
                            elementName = 'model'
                                ifTrue: [ 
                                    | serverModelOop serverObject |
                                    serverModelOop := winDir topez topezClientForwarder activeWindowServerModel.
                                    Transcript
                                        cr;
                                        show: 'dotWindowNode: [0]: ' , serverModelOop printString.
                                    serverModelOop ifNotNil: [ serverObject := Object _objectForOop: serverModelOop ].
                                    TZLeafNode new
                                        name: 'model';
                                        contents: serverModelOop printString;
                                        yourself ]
                                ifFalse: [ self error: 'no such element: ' , elementName printString ] ];
                addBlock: [ :winDir :commandName :block |  ];
                removeBlock: [ :winDir :commandName |  ];
                yourself)