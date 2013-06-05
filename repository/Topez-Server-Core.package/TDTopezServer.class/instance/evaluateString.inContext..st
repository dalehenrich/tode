accessing
evaluateString: aString inContext: anObject
  ^ self
    evaluateString: aString
    inContext: anObject
    withTempSymbolList: SymbolList new