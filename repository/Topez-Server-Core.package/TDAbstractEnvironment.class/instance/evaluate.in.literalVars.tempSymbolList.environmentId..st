evaluation
evaluate: aString in: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList environmentId: environmentId
  ^ (self
    compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList
    environmentId: environmentId) _executeInContext: compilationContext