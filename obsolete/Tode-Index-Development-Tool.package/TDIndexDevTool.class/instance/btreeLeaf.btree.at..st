as yet unclassified
btreeLeaf: parentNode btree: btree at: index
  | node |
  node := TDObjectNode new
    name: index printString;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>btreeLeaf:at:';
    basicContents: (btree at: (index - 1) * btree entrySize + 2);
    listBlock: [ :theNode | #('key' 'value') ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'key'
            ifTrue: [ self indexElementNode: theNode element: (btree at: (index - 1) * btree entrySize + 2) ]
            ifFalse: [ self indexElementNode: theNode element: (btree at: (index - 1) * btree entrySize + 1) ].
          childNode
            name: elementName;
            yourself ];
    yourself.
  ^ node