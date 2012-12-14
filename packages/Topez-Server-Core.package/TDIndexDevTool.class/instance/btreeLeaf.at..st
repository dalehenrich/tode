as yet unclassified
btreeLeaf: btree at: index
    | node |
    node := TDObjectNode new
        name: index printString;
        topez: topez;
        readMe: 'TDIndexDevTool>>btreeLeaf:at:';
        basicContents: (btree at: (index - 1) * btree entrySize + 2);
        listBlock: [ :theNode | #('key' 'value') ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'key'
                        ifTrue: [ self indexElementNode: (btree at: (index - 1) * btree entrySize + 2) ]
                        ifFalse: [ self indexElementNode: (btree at: (index - 1) * btree entrySize + 1) ].
                    childNode
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node