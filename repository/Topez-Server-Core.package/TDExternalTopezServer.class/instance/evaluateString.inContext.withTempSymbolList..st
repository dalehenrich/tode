accessing
evaluateString: aString inContext: anObject withTempSymbolList: tempSymbolList
  | result symList altSymList |
  self disableSessionMethods.
  symList := self symbolList.
  altSymList := self devSymbolList.
  anObject ifNotNil: [ anObject class userId = self todeUserId
        ifTrue: [ altSymList := self symbolList.
          symList := self devSymbolList ] ].
  result := aString
    evaluateInContext: anObject
    symbolList: symList , tempSymbolList.
  self ensureSessionMethodsEnabled.
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result