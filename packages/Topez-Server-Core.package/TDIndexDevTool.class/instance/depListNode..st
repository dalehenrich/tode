as yet unclassified
depListNode: depList
    | node map |
    self nodes at: depList ifPresent: [ :theNode | ^ theNode ].
    map := Dictionary new.
    node := TDObjectNode new
        topez: topez;
        basicContents: depList;
        listBlock: [ :theNode | 
                    | names |
                    names := Array new.
                    1 to: depList size by: 2 do: [ :index | 
                        | dependencyType |
                        dependencyType := depList at: index + 1.
                        dependencyType > 0
                            ifTrue: [ 
                                | pathTerm name |
                                pathTerm := depList at: index.
                                name := pathTerm name , '_' , dependencyType asString.
                                map
                                    at: name
                                    put:
                                        {pathTerm.
                                        dependencyType}.
                                names add: name ] ].
                    names
                        collect: [ :each | theNode renderNameText: each asString , theNode extension textAttributes: theNode class objectTextAttributes ] ];
        elementBlock: [ :theNode :elementName :absentBlock | 
                    (self pathTermNode: ((map at: elementName) at: 1))
                        parent: theNode;
                        yourself ];
        yourself.
    self nodes at: depList put: node.
    ^ node