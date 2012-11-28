as yet unclassified
dotWindowNode: aTDTopezServer
    <topezNode: '.window'>
    | node directory |
    node := aTDTopezServer installChildrenAt: '/home'.
    directory := Dictionary new.
    directory
        at: 'model'
        put: [ :topez | 
            | serverModelOop serverObject |
            serverModelOop := topez topezClientForwarder activeWindowServerModel.
            Transcript
                cr;
                show: 'dotWindowNode: [0]: ' , serverModelOop printString.
            serverModelOop ifNotNil: [ serverObject := Object _objectForOop: serverModelOop ].
            TDLeafNode new
                name: 'model';
                contents: serverObject;
                yourself ].
    node
        addChildNode:
            (TDBlockNode new
                name: '.window';
                basicContents: directory;
                listBlock: [ :theNode | theNode basicContents keys sorted ];
                elementBlock: [ :theNode :elementName :absentBlock | 
                            | block |
                            block := theNode basicContents at: elementName ifAbsent: absentBlock.
                            block value: theNode topez ];
                yourself)