block methods
execBlockCompileInContext: compilationContext evaluateIn: evalContext
  ^ ('[self halt]'
    _compileInContext: compilationContext
    symbolList: GsSession currentSession symbolList)
    _executeInContext: evalContext