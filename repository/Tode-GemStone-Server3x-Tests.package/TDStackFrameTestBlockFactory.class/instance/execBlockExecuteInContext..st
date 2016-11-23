block methods
execBlockExecuteInContext: executionContext
  | compilationContext |
  compilationContext := Object new.
  ^ ('[self halt]'
    _compileInContext: compilationContext
    symbolList: GsSession currentSession symbolList)
    _executeInContext: executionContext