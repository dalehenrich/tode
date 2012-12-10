as yet unclassified
edit
    "edit [ windowId | windowName ] [ path ]"

    | contextObject |
    contextObject := objIn.
    windowId := nil.
    tokens size > 1
        ifTrue: [ 
            | theTokens |
            theTokens := tokens copyWithoutIndex: 1.
            (tokens at: 2) isAllDigits
                ifTrue: [ 
                    windowId := (tokens at: 2) asNumber.
                    theTokens := tokens copyWithoutIndex: 2 ]
                ifFalse: [ 
                    ((tokens at: 2) beginsWith: '#')
                        ifTrue: [ 
                            windowId := topez windowIdNamed: ((tokens at: 2) copyWithout: $#) asSymbol.
                            theTokens := tokens copyWithoutIndex: 2 ] ].
            theTokens size > 0
                ifTrue: [ contextObject := topez lookup: (theTokens at: 1) ] ].
    ^ contextObject edit: topez windowId: windowId