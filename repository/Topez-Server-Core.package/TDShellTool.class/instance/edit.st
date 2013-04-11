as yet unclassified
edit
  "edit [ windowId | windowName ] [ path ]"

  | contextObject |
  contextObject := objIn.
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
        ifTrue: [ 
          | contextNode |
          contextNode := topez lookup: (theTokens at: 1).
          ^ contextNode
            edit: contextNode parent
            topez: topez
            aspect: #'edit'
            windowId: windowId ] ].
  contextObject edit: topez aspect: #'edit' windowId: windowId.
  ^ contextObject