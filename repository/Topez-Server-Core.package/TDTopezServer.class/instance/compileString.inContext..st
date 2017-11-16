accessing
compileString: aString inContext: anObject
  ^ self
    compileString: aString
    inContext: anObject
    literalVars: nil
    withTempSymbolList: SymbolList new