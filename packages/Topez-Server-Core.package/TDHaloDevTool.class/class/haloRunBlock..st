as yet unclassified
haloRunBlock: aTDTopezServer
    | directory |
    directory := Dictionary new.
    directory
        at: 'st'
            put: [ :parentNode :nodeName | 
                    TDPluggableLeafNode new
                        name: nodeName;
                        parent: parentNode;
                        getContentsBlock: [ :theNode | theNode topez serverStatus evaluateString ];
                        setContentsBlock: [ :theNode :newContents | theNode topez serverStatus evaluateString: newContents ];
                        extensionBlock: [ :theNode | theNode class executableExtension ];
                        renderAttributeBlock: [ :theNode | theNode class smalltalkTextAttributes ];
                        yourself ];
        at: 'result'
            put: [ :parentNode :nodeName | 
                    (parentNode topez serverStatus evaluateStringResult asTDObjectNode: parentNode topez aspect: #'edit')
                        name: 'result';
                        parent: parentNode;
                        yourself ];
        yourself.
    ^ [ :parentNode | 
    TDObjectNode new
        name: '.run';
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