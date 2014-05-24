as yet unclassified
evaluateString: aString
  ^ aString
    evaluateIn: self doItContext
    symbolList: self doItSymbolList
    literalVars: self doItLiteralArray