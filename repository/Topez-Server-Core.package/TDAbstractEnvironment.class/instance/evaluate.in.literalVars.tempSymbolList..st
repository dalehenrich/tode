evaluation
evaluate: aString in: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList
  ^ (self
    compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList) _executeInContext: compilationContext