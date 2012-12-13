as yet unclassified
indexListNode: indexList
    | node |
    self nodes at: indexList ifPresent: [ :theNode | ^ theNode ].
    node := TDObjectNode new
        name: 'indexList';
        topez: topez;
        basicContents: indexList;
        listBlock: [ :theNode | #('rootTerms') , ((1 to: indexList size) collect: [ :each | each asString ]) ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (elementName = 'rootTerms'
                        ifTrue: [ self pathTermsNode: indexList rootTerms label: elementName ]
                        ifFalse: [ self indexNode: (indexList at: elementName asNumber) ])
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    self nodes at: indexList put: node.
    ^ node