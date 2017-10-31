compilation
compile: aString inContext: compilationContext literalVars: litVarArrayOrNil tempSymbolList: tempSymbolList
  ^ self
    _compile: aString
    inContext: compilationContext
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList
    environmentId: self methodCompilationEnvironmentId