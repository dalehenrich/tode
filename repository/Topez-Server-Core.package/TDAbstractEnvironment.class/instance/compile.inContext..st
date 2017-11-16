compilation
compile: aString inContext: compilationContext
  ^ self
    _compile: aString
    inContext: compilationContext
    literalVars: nil
    tempSymbolList: SymbolList new
    environmentId: self methodCompilationEnvironmentId