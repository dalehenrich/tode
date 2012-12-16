as yet unclassified
bucketValueBagNode: bucketValueBag
    | node array |
    array := bucketValueBag asArray.
    node := TDObjectNode new
        name: bucketValueBag printString;
        topez: topez;
        readMe: 'TDIndexDevTool>>bucketValueBagNode:';
        basicContents: bucketValueBag;
        listBlock: [ :theNode | (1 to: array size) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ absentBlock value ].
                    (self indexElementNode: (array at: elementName asNumber))
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node