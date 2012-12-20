as yet unclassified
haloExceptionBlock: aTDTopezServer
    | directory |
    directory := Dictionary new.
    directory
        at: 'breakpoints'
            put: [ :parentNode :nodeName | 
                    self breakpointNode
                        name: nodeName;
                        parent: parentNode;
                        yourself ];
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
        at: 'exception'
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
        at: 'stack'
            put: [ :parentNode :nodeName | 
                    ((self
                        topez: aTDTopezServer
                        objIn: nil
                        tokens: #()
                        windowId: nil)
                        debugNode: parentNode topez serverStatus exceptionProcess
                        exception: parentNode topez serverStatus exception)
                        name: nodeName;
                        parent: parentNode;
                        yourself ];
        yourself.
    ^ [ :parentNode | 
    TDObjectNode new
        name: '.debug';
        basicContents: directory;
        parent: parentNode;
        readMe: self haloReadMe;
        elementExtensionBlock: [ :theNode :elementName | theNode class objectExtension ];
        elementRenderAttributeBlock: [ :theNode :elementName | theNode class objectTextAttributes ];
        listBlock: [ :theNode | theNode basicContents keys sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | block |
                    block := theNode basicContents at: elementName ifAbsent: absentBlock.
                    block value: theNode value: elementName ];
        yourself ]