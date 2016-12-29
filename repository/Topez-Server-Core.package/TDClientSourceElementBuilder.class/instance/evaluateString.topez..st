accessing
evaluateString: aString topez: aTopez
  ^ (self doItSymbolList: aTopez)
    ifNil: [ "not enough enough to know which symbolList is appropriate - use alternate procedure"
      aTopez
        evaluateString: aString
        inContext: self doItContext
        literalVars: self doItLiteralArray ]
    ifNotNil: [ :symbolList | aString
        evaluateIn: self doItContext
        symbolList: symbolList
        literalVars: self doItLiteralArray ]