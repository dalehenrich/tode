as yet unclassified
indexListNode: indexList
    | node |
    node := TDObjectNode new
        name: 'indexList';
        topez: topez;
        readMe: 'TDIndexDevTool>>indexListNode:';
        basicContents: indexList;
        listBlock: [ :theNode | #('rootTerms') , ((1 to: indexList size) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (elementName = 'rootTerms'
                        ifTrue: [ self pathTermsNode: indexList rootTerms ]
                        ifFalse: [ 
                            elementName isAllDigits
                                ifFalse: [ ^ absentBlock value ].
                            self indexNode: (indexList at: elementName asNumber) ])
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node