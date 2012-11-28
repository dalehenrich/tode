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
            (TDObjectNode new
                name: '.window';
                basicContents: directory;
                listBlock: [ :winDir | winDir basicContents keys sorted ];
                elementBlock: [ :winDir :elementName :absentBlock | 
                            | block |
                            block := winDir basicContents at: elementName ifAbsent: absentBlock.
                            block value: winDir topez ];
                addBlock: [ :winDir :commandName :block | self error: 'not allowed to add elements' ];
                removeBlock: [ :winDir :commandName | self error: 'not allowed to remove elements' ];
                yourself)