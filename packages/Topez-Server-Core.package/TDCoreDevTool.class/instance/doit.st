as yet unclassified
doit
    | doitSource doitContext doitSourceNode |
    doitSourceNode := topez lookup: (tokens at: 2).
    doitSourceNode isLeaf
        ifFalse: [ self error: 'first arg to doit must be a leaf node containing st source' ].
    doitSource := doitSourceNode contents.
    doitContext := tokens size >= 3
        ifTrue: [ (topez lookup: (tokens at: 3)) block value: topez value: (tokens copyFrom: 3 to: tokens size) value: nil ].
    ^ topez evaluateString: doitSource inContext: doitContext