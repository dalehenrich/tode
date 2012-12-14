as yet unclassified
nodeFor: indexDict array: parentArray pathTerm: pathTerm
    | node |
    node := TDObjectNode new
        name: 'pathLinkArray';
        topez: topez;
        readMe: 'TDIndexDevTool>>nodeFor:array:pathTerm:';
        basicContents: parentArray;
        listBlock: [ :theNode | (1 to: parentArray size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ ^ self error: 'No such node: ' , elementName printString ].
                    (self tupleNodeFor: indexDict parent: (parentArray at: elementName asNumber) pathTerm: pathTerm)
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node