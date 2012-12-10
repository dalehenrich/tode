as yet unclassified
run
    | doitContext |
    doitContext := objIn.
    tokens size = 1
        ifTrue: [ 
            | doitString |
            doitString := topez lookup: (tokens at: 1).
            ^ self topez evaluateString: doitString inContext: doitContext ].
    topez
        accumulateTextAndDo: [ :doitString | 
            topez exception: nil.
            ^ self topez evaluateString: doitString inContext: doitContext ].
    'receiver: ' , doitContext printString