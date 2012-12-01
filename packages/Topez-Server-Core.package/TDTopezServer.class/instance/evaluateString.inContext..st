accessing
evaluateString: aString inContext: anObject
    | result |
    result := aString evaluateInContext: anObject symbolList: GsSession currentSession symbolList.
    self serverStatus
        evaluateString: aString;
        evaluateStringResult: result.
    ^ result