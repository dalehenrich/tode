as yet unclassified
lookupMethodIn: methodTokens
  "<class> [class] >> <selector>"

  | sepIndex selector isMeta cls meth stepSource |
  sepIndex := methodTokens indexOf: '>>'.
  sepIndex == 0
    ifTrue: [ 
      "<class>[ class]>><selector>"
      "xxx(<class>[ class])>><selector>"
      ^ self lookupMethodInCompact: methodTokens ].
  selector := methodTokens at: sepIndex + 1.
  isMeta := sepIndex = 3.
  cls := Smalltalk at: (methodTokens at: 1) asSymbol.
  isMeta
    ifTrue: [ cls := cls class ].
  ^ cls compiledMethodAt: selector asSymbol