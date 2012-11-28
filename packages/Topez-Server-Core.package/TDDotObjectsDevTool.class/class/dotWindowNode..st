as yet unclassified
dotWindowNode: aTopez
    <topezNode: '.window'>
    | node directory |
    node := aTopez installChildrenAt: '/home'.
    directory := Dictionary new.
    directory
        at: 'model'
        put: [ :parentNode :nodeName | 
            | serverModelOop serverObject serverNode |
            serverModelOop := parentNode topez topezClientForwarder activeWindowServerModel.
            Transcript
                cr;
                show: 'dotWindowNode: [0]: ' , serverModelOop printString.
            serverModelOop ifNotNil: [ serverObject := Object _objectForOop: serverModelOop ].
            (serverObject asTDObjectNode: parentNode topez aspect: #'edit')
                name: nodeName;
                parent: parentNode;
                yourself ].
    node
        addChildNode:
            (TDObjectNode new
                name: '.window';
                basicContents: directory;
                listBlock: [ :theNode | theNode basicContents keys sorted ];
                elementBlock: [ :theNode :elementName :absentBlock | 
                            | block |
                            block := theNode basicContents at: elementName ifAbsent: absentBlock.
                            block value: theNode value: elementName ];
                yourself)