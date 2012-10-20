as yet unclassified
instanceElementFor: instance level: level
    "assuming depth 0 for now"

    | coll indent |
    indent := 0.
    coll := Array new.
    coll add: (self createInstanceElementFor: instance label: '' indent: indent).
    [ 
    indent := indent + 1.
    indent <= level ]
        whileTrue: [ 
            instance class allInstVarNames
                do: [ :each | coll add: (self createInstanceElementFor: (instance instVarNamed: each) label: each asString indent: indent) ].
            instance class isVariable
                ifTrue: [ 
                    1 to: anObject _basicSize do: [ :index | 
                        | value |
                        value := instance _at: index.
                        coll add: (self createInstanceElementFor: value label: index printString , '.' indent: indent) ] ] ].
    ^ self toString: coll level: level