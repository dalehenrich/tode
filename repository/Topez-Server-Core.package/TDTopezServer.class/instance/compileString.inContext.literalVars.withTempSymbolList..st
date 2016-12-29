accessing
compileString: aString inContext: anObject literalVars: litVarArrayOrNil withTempSymbolList: tempSymbolList
  ^ self applicationEnvironment
    compile: aString
    in: anObject
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList