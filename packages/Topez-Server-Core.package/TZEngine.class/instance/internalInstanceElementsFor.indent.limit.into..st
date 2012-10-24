as yet unclassified
internalInstanceElementsFor: instance indent: indent limit: limit into: coll
    indent > limit
        ifTrue: [ ^ self ].
    instance class allInstVarNames
        do: [ :each | 
            | value |
            value := instance instVarNamed: each.
            coll add: (self createInstanceElementFor: value label: each asString indent: indent).
            self
                internalInstanceElementsFor: value
                indent: indent + 1
                limit: limit
                into: coll ].
    instance class isVariable
        ifTrue: [ 
            1 to: instance _basicSize do: [ :index | 
                [ 
                | value |
                value := instance basicAt: index.
                coll add: (self createInstanceElementFor: value label: index printString , '.' indent: indent).
                self
                    internalInstanceElementsFor: value
                    indent: indent + 1
                    limit: limit
                    into: coll ]
                    on: Error
                    do: [ :ex | 
                        "as of this writing [dkh 10/23/2012 15:00], #_at: throws OffsetError for GsNMethod"
                         ] ] ]