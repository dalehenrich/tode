as yet unclassified
btreeNode: btree
    | node |
    btree == nil
        ifTrue: [ ^ nil ].
    node := TDObjectNode new
        name: btree printString;
        topez: topez;
        readMe: 'TDIndexDevTool>>btreeNode:';
        basicContents: btree;
        listBlock: [ :theNode | (1 to: btree numElements) collect: [ :each | each asString ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    elementName isAllDigits
                        ifFalse: [ ^ self error: 'No such node: ' , elementName printString ].
                    (self btreeLeaf: btree at: elementName asNumber)
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node