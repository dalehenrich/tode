as yet unclassified
stTestsNode: aTopez
    <topezNode: 'tests'>
    | node directory |
    node := aTopez installChildrenAt: '/st'.
    node
        addChildNode:
            (TDPluggableNode new
                name: 'tests';
                readMe: self testsReadMe;
                basicContents: [ :selector :category | 
                            | testCases |
                            testCases := TestCase allSubclasses.
                            selector == #'list'
                                ifTrue: [ (testCases collect: [ :class | class category ]) asSet asArray sorted ]
                                ifFalse: [ 
                                    "selector == #'classes'"
                                    ((ClassOrganizer cachedOrganizer categories at: category asSymbol)
                                        select: [ :cls | testCases includes: cls ]) asArray
                                        sort: [ :a :b | a name <= b name ] ] ];
                extensionBlock: [ :theNode | theNode class directoryExtension ];
                renderAttributeBlock: [ :theNode | theNode class directoryTextAttributes ];
                listBlock: [ :theNode | 
                            (theNode basicContents value: #'list' value: nil)
                                collect: [ :each | theNode renderNameText: each , theNode extension textAttributes: theNode renderNameTextAttributes ] ];
                elementBlock: [ :theNode :elementName :absentBlock | 
                            Transcript
                                cr;
                                show: elementName asString.
                            self
                                testCaseNodeFor: (theNode basicContents value: #'classes' value: elementName)
                                named: elementName
                                parentNode: theNode
                                topez: aTopez ];
                yourself)