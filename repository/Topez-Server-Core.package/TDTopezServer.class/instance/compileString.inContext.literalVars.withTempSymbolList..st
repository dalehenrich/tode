accessing
compileString: aString inContext: anObject literalVars: litVarArrayOrNil withTempSymbolList: tempSymbolList
  ^ self applicationEnvironment
    compile: aString
    inContext: anObject
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList