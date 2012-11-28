as yet unclassified
edit
    tokens size = 1
        ifTrue: [ self error: 'must supply an arg to edit command' ]
        ifFalse: [ 
            | selector block theTokens |
            theTokens := tokens.
            windowId := nil.
            (tokens at: 2) isAllDigits
                ifTrue: [ 
                    windowId := (tokens at: 2) asNumber.
                    theTokens := tokens copyWithoutIndex: 2 ]
                ifFalse: [ 
                    ((tokens at: 2) beginsWith: '#')
                        ifTrue: [ 
                            windowId := topez windowIdNamed: ((tokens at: 2) copyWithout: $#) asSymbol.
                            theTokens := tokens copyWithoutIndex: 2 ]
                        ifFalse: [ windowId := topez windowIdNamed: #'edit' ] ].
            ^ theTokens size = 1
                ifTrue: [ topez activateWindow: windowId ]
                ifFalse: [ 
                    selector := (theTokens at: 2) asSymbol.
                    block := topez commands at: selector ifAbsent: [  ].
                    block == nil
                        ifTrue: [ (topez lookup: (tokens at: 2)) edit: topez tokens: theTokens windowId: windowId ]
                        ifFalse: [ block value: topez value: theTokens value: windowId ] ] ]