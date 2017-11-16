accessing
evaluateString: aString inContext: anObject literalVars: litVarArrayOrNil withTempSymbolList: tempSymbolList environmentId: environmentId
  | result |
  self disableSessionMethods.
  result := self applicationEnvironment
    evaluate: aString
    in: anObject
    literalVars: litVarArrayOrNil
    tempSymbolList: tempSymbolList
    environmentId: environmentId.
  self ensureSessionMethodsEnabled.
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result