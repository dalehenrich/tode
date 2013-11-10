as yet unclassified
shellInspect
  "inspect [ windowId | windowName ] [ path ]"

  | contextObject parentNode theWindowId |
  theWindowId := nil.
  contextObject := objIn.
  parentNode := nil.
  tokens size > 1
    ifTrue: [ 
      | theTokens |
      theTokens := tokens copyWithoutIndex: 1.
      (tokens at: 2) isAllDigits
        ifTrue: [ 
          theWindowId := (tokens at: 2) asNumber.
          theTokens := tokens copyWithoutIndex: 2 ]
        ifFalse: [ 
          ((tokens at: 2) beginsWith: '#')
            ifTrue: [ 
              theWindowId := topez windowIdNamed: ((tokens at: 2) copyWithout: $#) asSymbol.
              theTokens := tokens copyWithoutIndex: 2 ] ].
      theTokens size > 0
        ifTrue: [ 
          | contextNode |
          contextNode := topez lookup: (theTokens at: 1).
          parentNode := contextNode parent.
          contextObject := contextNode dotSelfObject ] ].
  contextObject
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'inspect')
        builderAspect: #'inspect';
        yourself).
  ^ contextObject