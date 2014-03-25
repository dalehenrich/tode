as yet unclassified
evaluateString: aString
  | doItContext |
  doItContext := self doItContext.
  ^ (aString
    _compileInContext: doItContext
    symbolList: self doItSymbolList
    oldLitVars: self doItLiteralDict
    environmentId: 0) _executeInContext: doItContext