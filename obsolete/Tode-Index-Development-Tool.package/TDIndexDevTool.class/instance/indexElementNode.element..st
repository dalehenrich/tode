as yet unclassified
indexElementNode: parentNode element: nscElement
  | node depList depVars instVars |
  depList := DependencyList for: nscElement.
  depVars := Array new.
  1 to: depList size by: 2 do: [ :index | depVars add: (depList at: index) name asString ].
  instVars := (nscElement class allInstVarNames collect: [ :each | each asString ]) sorted.
  node := TDObjectNode new
    name: nscElement printString;
    parent: parentNode;
    topez: topez;
    readMe: 'TDIndexDevTool>>indexElementNode: ... bold name indicates that the instance variable is on an index path';
    basicContents: nscElement;
    elementRenderAttributeBlock: [ :theNode :elementName | 
          (depVars includes: elementName)
            ifTrue: [ theNode class objectTextAttributes ]
            ifFalse: [ {(TextColor color: Color brown)} ] ];
    listBlock: [ :theNode | 
          (depList == nil
            ifTrue: [ #() ]
            ifFalse: [ #('depList') ]) , instVars ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | childNode |
          childNode := elementName = 'depList'
            ifTrue: [ self depListNode: theNode depList: depList ]
            ifFalse: [ self indexElementNode: theNode element: (nscElement instVarNamed: elementName) ].
          childNode
            name: elementName;
            yourself ];
    yourself.
  ^ node