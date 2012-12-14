as yet unclassified
indexElementNode: nscElement
    | node depList depVars |
    depList := DependencyList for: nscElement.
    depVars := #('depList') copy.
    1 to: depList size by: 2 do: [ :index | depVars add: (depList at: index) name ].
    node := TDObjectNode new
        name: nscElement printString;
        topez: topez;
        readMe: 'TDIndexDevTool>>indexElementNode:';
        basicContents: nscElement;
        elementRenderAttributeBlock: [ :theNode :elementName | 
                    (depVars includes: elementName)
                        ifTrue: [ theNode class objectTextAttributes ]
                        ifFalse: [ {(TextColor color: Color brown)} ] ];
        listBlock: [ :theNode | 
                    (depList == nil
                        ifTrue: [ #() ]
                        ifFalse: [ #('depList') ]) , nscElement class allInstVarNames sorted ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    | childNode |
                    childNode := elementName = 'depList'
                        ifTrue: [ self depListNode: depList ]
                        ifFalse: [ self indexElementNode: (nscElement instVarNamed: elementName) ].
                    childNode
                        name: elementName;
                        parent: theNode;
                        yourself ];
        yourself.
    ^ node