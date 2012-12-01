as yet unclassified
run
    tokens size = 1
        ifTrue: [ 
            topez
                accumulateTextAndDo: [ :doitString | 
                    topez exception: nil.
                    self topez evaluateString: doitString inContext: nil ].
            ^ '' ]