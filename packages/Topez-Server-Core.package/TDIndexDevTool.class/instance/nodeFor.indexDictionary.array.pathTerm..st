as yet unclassified
nodeFor: parenNode indexDictionary: indexDict array: parentArray pathTerm: pathTerm
  | node |
  node := TDObjectNode new
    name: 'pathLinkArray';
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>nodeFor:array:pathTerm:';
    basicContents: parentArray;
    listBlock: [ :theNode | (1 to: parentArray size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          (self
            tupleNodeFor: theNode
            indexDictionary: indexDict
            parent: (parentArray at: elementName asNumber)
            pathTerm: pathTerm)
            name: elementName;
            yourself ];
    yourself.
  ^ node