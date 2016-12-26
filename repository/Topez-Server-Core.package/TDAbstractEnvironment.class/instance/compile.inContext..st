compilation
compile: aString inContext: compilationContext
  ^ self
    _compile: aString
    inContext: compilationContext
    symbolList: self methodCompilationSymbolList
    envId: self methodCompilationEnvironmentId