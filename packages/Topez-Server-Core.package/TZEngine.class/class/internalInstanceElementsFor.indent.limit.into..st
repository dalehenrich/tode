as yet unclassified
internalInstanceElementsFor: instance indent: indent limit: limit into: coll
    instance class allInstVarNames
        do: [ :each | 
            | value |
            value := instance instVarNamed: each.
            coll add: (self createInstanceElementFor: value label: each asString indent: indent).
            indent < limit
                ifTrue: [ 
                    self
                        internalInstanceElementsFor: value
                        indent: indent + 1
                        limit: limit
                        into: coll ] ].
    instance class isVariable
        ifTrue: [ 
            1 to: anObject _basicSize do: [ :index | 
                | value |
                value := instance _at: index.
                coll add: (self createInstanceElementFor: value label: index printString , '.' indent: indent).
                indent < limit
                    ifTrue: [ 
                        self
                            internalInstanceElementsFor: value
                            indent: indent + 1
                            limit: limit
                            into: coll ] ] ]