as yet unclassified
haloWindowBlock: aTDTopezServer
    | directory |
    directory := Dictionary new.
    directory
        at: 'model'
        put: [ :parentNode :nodeName | 
            | serverModelOop serverObject serverNode |
            serverModelOop := parentNode topez topezClientForwarder activeWindowServerModel.
            serverModelOop ifNotNil: [ serverObject := Object _objectForOop: serverModelOop ].
            (serverObject asTDObjectNode: parentNode topez aspect: #'edit')
                name: nodeName;
                parent: parentNode;
                yourself ].
    ^ [ :parentNode | 
    TDObjectNode new
        name: '.window';
        basicContents: directory;
        parent: parentNode;
        listBlock: [ :theNode | 
                    theNode basicContents keys sorted
                        collect: [ :each | theNode renderNameText: each , theNode extension textAttributes: theNode class objectTextAttributes ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | block |
                    block := theNode basicContents at: elementName ifAbsent: absentBlock.
                    block value: theNode value: elementName ];
        yourself ]