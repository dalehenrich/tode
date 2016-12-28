accessing
evaluateString: aString inContext: anObject literalVars: litVarArrayOrNil withTempSymbolList: tempSymbolList
  | result |
  self disableSessionMethods.
  result := self applicationEnvironment
    evaluate: aString
    in: anObject
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList.
  self ensureSessionMethodsEnabled.
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result