accessing
evaluateString: aString topez: aTopez
  ^ aString
    evaluateIn: self doItContext
    symbolList: (self doItSymbolList: aTopez)
    literalVars: self doItLiteralArray