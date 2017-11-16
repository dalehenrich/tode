accessing
evaluateString: aString inContext: anObject literalVars: litVarArrayOrNil
  ^ self
    evaluateString: aString
    inContext: anObject
    literalVars: litVarArrayOrNil
    withTempSymbolList: SymbolList new