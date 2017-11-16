accessing
evaluateString: aString inContext: anObject
  ^ self
    evaluateString: aString
    inContext: anObject
    literalVars: nil
    withTempSymbolList: SymbolList new