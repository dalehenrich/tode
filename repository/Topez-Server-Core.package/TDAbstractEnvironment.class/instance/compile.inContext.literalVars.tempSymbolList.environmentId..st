compilation
compile: aString inContext: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList environmentId: environmentId
  ^ self
    _compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList
    environmentId: environmentId