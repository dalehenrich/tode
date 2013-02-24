accessing
evaluateString: aString inContext: anObject
  | result |
  self disableSessionMethods.
  result := aString
    evaluateInContext: anObject
    symbolList: GsSession currentSession symbolList.
  self ensureSessionMethodsEnabled.
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result