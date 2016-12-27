accessing
evaluateString: aString inContext: anObject withTempSymbolList: tempSymbolList
  | result environment altEnvironment |
  environment := self applicationEnvironment.
  altEnvironment := self todeEnvironment.
  result := anObject
    ifNil: [ "try environment and if there are undefined globals, then try altEnvironment"
      [ [ environment evaluate: aString in: anObject tempSymbolList: tempSymbolList ]
        on: TDUndefinedGlobalNotification
        do: [ :ex | | undefined |
          undefined := false.
          ex undefinedGlobals
            do: [ :globalName | (altEnvironment globalName: globalName) ifNil: [ undefined := true ].
              undefined
                ifTrue: [ ex resume: false ] ].
          ex resume: true ] ]
        on: environment compilerExceptionSet
        do: [ :ex | altEnvironment evaluate: aString in: anObject tempSymbolList: tempSymbolList ] ]
    ifNotNil: [ anObject class userId = self todeUserId
        ifTrue: [ environment := altEnvironment ].
      environment
        evaluate: aString
        inContext: anObject
        tempSymbolList: tempSymbolList ].
  self serverStatus
    evaluateString: aString;
    evaluateStringResult: result.
  ^ result