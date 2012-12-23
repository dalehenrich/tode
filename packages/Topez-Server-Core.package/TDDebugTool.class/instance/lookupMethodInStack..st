as yet unclassified
lookupMethodInStack: methodTokens
  "xxx(<class>[ class])>><selector>"

  | strippedToken index selector cls meth stepSource statement |
  strippedToken := methodTokens at: 1.
  index := strippedToken indexOf: $(.
  strippedToken := strippedToken copyFrom: index + 1 to: strippedToken size.
  methodTokens size < 2
    ifTrue: [ 
      | className |
      "instance-side"
      statement := strippedToken findTokens: '>>'.
      className := statement at: 1.
      className := className copyFrom: 1 to: className size - 1.
      cls := Smalltalk at: className asSymbol.
      selector := statement at: 2 ]
    ifFalse: [ 
      "class-side"
      cls := (Smalltalk at: strippedToken asSymbol) class.
      statement := (methodTokens at: 2) findTokens: '>>'.
      selector := statement at: 2 ].
  ^ cls compiledMethodAt: selector asSymbol