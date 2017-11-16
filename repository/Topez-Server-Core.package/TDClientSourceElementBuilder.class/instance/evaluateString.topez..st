accessing
evaluateString: aString topez: aTopez
  ^ aTopez
    evaluateString: aString
    inContext: self doItContext
    literalVars: self doItLiteralArray