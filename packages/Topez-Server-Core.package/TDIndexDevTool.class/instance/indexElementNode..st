as yet unclassified
indexElementNode: nscElement
    | node depList |
    self nodes at: nscElement ifPresent: [ :theNode | ^ theNode ].
    depList := DependencyList for: nscElement.
    node := TDObjectNode new
        name: nscElement printString;
        topez: topez;
        basicContents: nscElement;
        listBlock: [ :theNode | 
                    (depList == nil
                        ifTrue: [ #() ]
                        ifFalse: [ #('depList') ]) , nscElement class allInstVarNames sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'depList'
                        ifTrue: [ self depListNode: depList ]
                        ifFalse: [ self indexElementNode: (nscElement instVarNamed: elementName) ].
                    childNode
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    self nodes at: nscElement put: node.
    ^ node