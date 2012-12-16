as yet unclassified
pathTermsNode: array
    | node |
    node := TDObjectNode new
        name: 'pathTermArray';
        topez: topez;
        readMe: 'TDIndexDevTool>>pathTermsNode:';
        basicContents: array;
        listBlock: [ :theNode | (1 to: array size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ absentBlock value ].
                    (self pathTermNode: (array at: elementName asNumber))
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node