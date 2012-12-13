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
        elementExtensionBlock: [ :theNode | theNode class objectExtension ];
        elementRenderAttributeBlock: [ :theNode | theNode class objectTextAttributes ];
        listBlock: [ :theNode | theNode basicContents keys sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | block |
                    block := theNode basicContents at: elementName ifAbsent: absentBlock.
                    block value: theNode value: elementName ];
        yourself ]