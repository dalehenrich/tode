as yet unclassified
lookupMethodInCompact: methodTokens
  "<class>[ class]>><selector>"

  | selector cls meth stepSource statement |
  ((methodTokens at: 1) includes: $()
    ifTrue: [ 
      "xxx(<class>[ class])>><selector>"
      ^ self lookupMethodInStack: methodTokens ].
  methodTokens size < 2
    ifTrue: [ 
      "instance-side"
      statement := (methodTokens at: 1) findTokens: '>>'.
      cls := Smalltalk at: (statement at: 1) asSymbol.
      selector := statement at: 2 ]
    ifFalse: [ 
      "class-side"
      ((methodTokens at: 2) includes: $()
        ifTrue: [ 
          "xxx class(<class>[ class])>><selector>"
          ^ self lookupClassMethodInStack: methodTokens ].
      cls := (Smalltalk at: (methodTokens at: 1) asSymbol) class.
      statement := (methodTokens at: 2) findTokens: '>>'.
      selector := statement at: 2 ].
  ^ cls compiledMethodAt: selector asSymbol