evaluation
evaluate: aString in: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList evalContext: evaluationContext
  ^ (self
    compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList) _executeInContext: evaluationContext