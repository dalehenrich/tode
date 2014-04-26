as yet unclassified
depListNode: parentNode depList: depList
  | node map |
  map := Dictionary new.
  node := TDObjectNode new
    name: 'depList';
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>depListNode:';
    basicContents: depList;
    listBlock: [ :theNode | 
          | names |
          names := Array new.
          1 to: depList size do: [ :index | 
            map at: index asString put: (depList at: index).
            names add: index asString ].
          names ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | index |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          index := elementName asNumber.
          (index even
            ifTrue: [ (map at: elementName) asTDObjectNode: theNode topez: theNode topez aspect: #'view' ]
            ifFalse: [ self pathTermNode: theNode pathTerm: (map at: elementName) ])
            name: elementName;
            yourself ];
    yourself.
  ^ node