as yet unclassified
indexElementNode: nscElement
    | node depList map |
    self nodes at: nscElement ifPresent: [ :theNode | ^ theNode ].
    depList := DependencyList for: nscElement.
    depList == nil
        ifTrue: [ self error: 'invariant objects not handled yet' ].
    map := Dictionary new.
    1 to: depList size by: 2 do: [ :index | 
        | pathTerm dependencyType |
        pathTerm := depList at: index.
        dependencyType := depList at: index + 1.
        dependencyType > 0
            ifTrue: [ 
                "dependency involving pathTerms"
                map
                    at: pathTerm name
                    ifPresent: [ :coll | coll add: pathTerm ]
                    ifAbsent: [ 
                        | coll |
                        coll := Array new add: pathTerm.
                        map at: pathTerm name put: coll ] ] ].
    node := TDObjectNode new
        name: nscElement printString;
        topez: topez;
        basicContents: nscElement;
        listBlock: [ :theNode | #('depList') , map keys asArray ];
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
    self nodes at: nscElement put: node.
    ^ node