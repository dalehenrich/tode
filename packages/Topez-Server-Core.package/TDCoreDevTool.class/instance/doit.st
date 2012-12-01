as yet unclassified
doit
    | doitSource doitContext |
    doitSource := (topez lookup: (tokens at: 2)) contents.
    doitContext := tokens size >= 3
        ifTrue: [ (topez lookup: (tokens at: 3)) block value: topez value: (tokens copyFrom: 3 to: tokens size) value: nil ].
    ^ topez evaluateString: doitSource inContext: doitContext