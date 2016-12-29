accessing
evaluateString: aString
  ^ self
    evaluateString: aString
    inContext: nil
    literalVars: nil
    withTempSymbolList: SymbolList new