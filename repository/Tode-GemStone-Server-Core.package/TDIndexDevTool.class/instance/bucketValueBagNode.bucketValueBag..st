as yet unclassified
bucketValueBagNode: parentNode bucketValueBag: bucketValueBag
  | node array |
  array := bucketValueBag asArray.
  node := TDObjectNode new
    name: bucketValueBag printString;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>bucketValueBagNode:';
    basicContents: bucketValueBag;
    listBlock: [ :theNode | (1 to: array size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          (self indexElementNode: theNode element: (array at: elementName asNumber))
            name: elementName;
            yourself ];
    yourself.
  ^ node