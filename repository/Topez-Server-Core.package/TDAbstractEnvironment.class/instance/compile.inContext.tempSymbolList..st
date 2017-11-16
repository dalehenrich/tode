compilation
compile: aString inContext: compilationContext tempSymbolList: tempSymbolList
  ^ self
    _compile: aString
    inContext: compilationContext
    literalVars: nil
    tempSymbolList: tempSymbolList
    environmentId: self methodCompilationEnvironmentId