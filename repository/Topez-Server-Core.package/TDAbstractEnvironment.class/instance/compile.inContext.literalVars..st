compilation
compile: aString inContext: compilationContext literalVars: litVarArrayOrNil
  ^ self
    _compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: SymbolList new