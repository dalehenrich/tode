block methods
execBlockCompile: aString inContext: compilationContext evaluateIn: evalContext
  ^ (aString
    _compileInContext: compilationContext
    symbolList: GsSession currentSession symbolList)
    _executeInContext: evalContext