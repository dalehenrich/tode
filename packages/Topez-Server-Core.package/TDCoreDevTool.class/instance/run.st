as yet unclassified
run
    | doitContext |
    doitContext := nil.
    doitContext := tokens size = 2
        ifTrue: [ (topez lookup: (tokens at: 2)) block value: topez value: (tokens copyFrom: 2 to: tokens size) value: nil ].
    topez
        accumulateTextAndDo: [ :doitString | 
            topez exception: nil.
            self topez evaluateString: doitString inContext: doitContext ].
    ^ ''