as yet unclassified
nscNode: parentNode nsc: nsc
  | node |
  node := TDObjectNode new
    name: 'nsc';
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>nscNode:';
    basicContents: nsc;
    listBlock: [ :theNode | #('indexedPaths') , ((1 to: nsc size) collect: [ :each | each asString ]) ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'indexedPaths'
            ifTrue: [ self indexListNode: theNode indexList: nsc _indexedPaths ]
            ifFalse: [ 
              elementName isAllDigits
                ifFalse: [ absentBlock value ].
              self indexElementNode: theNode element: (nsc _at: elementName asNumber) ].
          childNode
            name: elementName;
            yourself ];
    yourself.
  ^ node