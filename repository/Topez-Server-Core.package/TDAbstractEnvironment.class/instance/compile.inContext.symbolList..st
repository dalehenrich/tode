compilation
compile: aString inContext: compilationContext symbolList: symbolList
  ^ self
    _compile: aString
    inContext: compilationContext
    symbolList: symbolList
    envId: self methodCompilationEnvironmentId