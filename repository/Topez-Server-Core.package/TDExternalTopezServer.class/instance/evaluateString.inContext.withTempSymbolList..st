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
                ifTrue: [ "looks like globals are available in altEnvironment"
                  ex resume: false ] ].
          ex resume: true	"declare in applicationEnvironment" ] ]
        on: environment compilerExceptionSet
        do: [ :ex | "all globals should be available in todeEnvironment -- may want an error handler here to explain the situation"
          altEnvironment
            evaluate: aString
            in: anObject
            tempSymbolList: tempSymbolList ] ]
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