block methods
execBlockCompileInContext: compilationContext
  ^ ('[self halt]'
    _compileInContext: compilationContext
    symbolList: GsSession currentSession symbolList)
    _executeInContext: compilationContext