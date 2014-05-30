as yet unclassified
parseMethodSpec: methodSpecString
  "class>>selector or class class>>selector answer array:
    { className. selector. isMeta. }"

  | className selector isMeta methodSpec classSpec |
  methodSpec := methodSpecString findTokens: '>>'.
  classSpec := (methodSpec at: 1) findTokens: ' '.
  isMeta := false.
  className := (classSpec at: 1) asSymbol.
  classSpec size > 1
    ifTrue: [ 
      (classSpec at: 2) = 'class'
        ifFalse: [ self error: 'invalid methodSpec' ].
      isMeta := true ].
  selector := (methodSpec at: 2) asSymbol.
  ^ {className.
  selector.
  isMeta}