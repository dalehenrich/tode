as yet unclassified
editX
    tokens size = 1
        ifTrue: [ 
            "
                    | method |
                    method := (evaluator stack at: evaluator currentFrameIndex) method.
                    topez
                        editDoIt: (topez sourceForMethod: method)
                        inClass: evaluator status currentClass
                        label: 'Method'
                        inWindow: nil
                        at: 'method' "
             ]
        ifFalse: [ 
            | sub selector block theTokens |
            theTokens := tokens.
            windowId := nil.
            (tokens at: 2) isAllDigits
                ifTrue: [ 
                    windowId := (tokens at: 2) asNumber.
                    theTokens := tokens copyWithoutIndex: 2 ]
                ifFalse: [ 
                    Transcript
                        cr;
                        show: (tokens at: 2).
                    ((tokens at: 2) beginsWith: '#')
                        ifTrue: [ 
                            windowId := topez windowIdNamed: ((tokens at: 2) copyWithout: $#) asSymbol.
                            theTokens := tokens copyWithoutIndex: 2 ] ].
            ^ theTokens size = 1
                ifTrue: [ topez activateWindow: windowId ]
                ifFalse: [ 
                    sub := (selector := theTokens at: 2) asSymbol.
                    block := topez commands at: sub ifAbsent: [  ].
                    block == nil
                        ifTrue: [ (topez lookup: (tokens at: 2)) editElement: theTokens windowId: windowId ]
                        ifFalse: [ block value: topez value: theTokens value: windowId ] ] ]