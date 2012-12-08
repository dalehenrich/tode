as yet unclassified
testCaseNodeFor: testCaseClasses named: nodeName parentNode: parentNode topez: aTopez
    ^ TDPluggableNode new
        name: nodeName;
        parent: parentNode;
        readMe: '';
        basicContents: [ :selector :className | 
                    selector == #'list'
                        ifTrue: [ testCaseClasses collect: [ :cls | cls name asString ] ]
                        ifFalse: [ 
                            "className"
                            testCaseClasses detect: [ :cls | cls name asString = className ] ] ];
        extensionBlock: [ :theNode | theNode class directoryExtension ];
        renderAttributeBlock: [ :theNode | theNode class directoryTextAttributes ];
        listBlock: [ :theNode | 
                    (theNode basicContents value: #'list' value: nil)
                        collect: [ :cls | 
                            theNode
                                renderNameText: cls name asString , theNode class objectExtension
                                textAttributes: theNode class objectTextAttributes ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | cls |
                    cls := theNode basicContents value: #'className' value: elementName asSymbol.
                    (cls asTDObjectNode: theNode topez aspect: #'edit')
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself