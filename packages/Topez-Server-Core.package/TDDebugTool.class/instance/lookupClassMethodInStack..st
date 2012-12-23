as yet unclassified
lookupClassMethodInStack: methodTokens
  "xxx class(<class>[ class])>><selector>"

  ^ self lookupMethodInStack: (methodTokens copyFrom: 2 to: methodTokens size)