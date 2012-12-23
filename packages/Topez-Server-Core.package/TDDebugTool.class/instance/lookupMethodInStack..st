as yet unclassified
lookupMethodInStack: methodTokens
  "xxx(<class>[ class])>><selector>"

  | strippedToken index selector cls meth stepSource statement |
  strippedToken := methodTokens at: 1.
  index := strippedToken indexOf: $(.
  strippedToken := strippedToken copyFrom: index + 1 to: strippedToken size.
  methodTokens size < 2
    ifTrue: [ 
      "instance-side .. get rid of trailing $)"
      strippedToken := strippedToken copyFrom: 1 to: strippedToken size - 1.
      statement := strippedToken findTokens: '>>'.
      cls := Smalltalk at: (statement at: 1) asSymbol.
      selector := statement at: 2 ]
    ifFalse: [ 
      "class-side"
      cls := (Smalltalk at: strippedToken asSymbol) class.
      statement := (methodTokens at: 2) findTokens: '>>'.
      selector := statement at: 2 ].
  ^ cls compiledMethodAt: selector asSymbol