api
instanceElementFor: instanceProxy level: level
    "assuming depth 0 for now"

    | coll indent |
    indent := 0.
    coll := OrderedCollection new.
    coll add: (self createInstanceElementFor: instanceProxy label: '' indent: indent).
    [ 
    indent := indent + 1.
    indent <= level ]
        whileTrue: [ 
            instanceProxy named
                keysAndValuesDo: [ :instVarName :valueProxy | coll add: (self createInstanceElementFor: valueProxy asTopezProxy label: instVarName asString indent: indent) ].
            instanceProxy indexed
                doWithIndex: [ :valueProxy :index | coll add: (self createInstanceElementFor: valueProxy asTopezProxy label: index printString , '.' indent: indent) ] ].
    ^ coll asArray