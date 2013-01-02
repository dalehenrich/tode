as yet unclassified
btreeNode: parentNode btree: btree
  | node |
  btree == nil
    ifTrue: [ ^ nil ].
  node := TDObjectNode new
    name: btree printString;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>btreeNode:';
    basicContents: btree;
    listBlock: [ :theNode | (1 to: btree numElements) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          (self btreeLeaf: theNode btree: btree at: elementName asNumber)
            name: elementName;
            yourself ];
    yourself.
  ^ node