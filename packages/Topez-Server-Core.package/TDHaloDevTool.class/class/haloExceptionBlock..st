as yet unclassified
haloExceptionBlock: aTDTopezServer
    | directory |
    directory := Dictionary new.
    directory
        at: 'description'
            put: [ :parentNode :nodeName | 
                    TDPluggableLeafNode new
                        name: nodeName;
                        parent: parentNode;
                        getContentsBlock: [ :theNode | 
                                    | ex |
                                    ex := theNode topez serverStatus exception.
                                    ex == nil
                                        ifTrue: [ 'no exception' ]
                                        ifFalse: [ ex description ] ];
                        yourself ];
        at: 'ex'
            put: [ :parentNode :nodeName | 
                    (parentNode topez serverStatus exception asTDObjectNode: parentNode topez aspect: #'edit')
                        name: nodeName;
                        parent: parentNode;
                        yourself ];
        at: 'process'
            put: [ :parentNode :nodeName | 
                    (parentNode topez serverStatus exceptionProcess asTDObjectNode: parentNode topez aspect: #'edit')
                        name: nodeName;
                        parent: parentNode;
                        yourself ];
        yourself.
    ^ [ :parentNode | 
    TDObjectNode new
        name: '.exception';
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