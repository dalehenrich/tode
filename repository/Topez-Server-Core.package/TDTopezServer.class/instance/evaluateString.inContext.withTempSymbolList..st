accessing
evaluateString: aString inContext: anObject withTempSymbolList: tempSymbolList
  | result |
  self disableSessionMethods.
  result := aString
    evaluateInContext: anObject
    symbolList: self symbolList , tempSymbolList.
  self ensureSessionMethodsEnabled.
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result