block methods
execBlockCompileInContext
  | compilationContext |
  compilationContext := self.
  ^ ('[self halt]'
    _compileInContext: compilationContext
    symbolList: GsSession currentSession symbolList)
    _executeInContext: compilationContext