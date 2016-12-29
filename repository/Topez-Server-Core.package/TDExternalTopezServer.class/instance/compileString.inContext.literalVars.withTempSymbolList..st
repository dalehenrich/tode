accessing
compileString: aString inContext: anObject literalVars: litVarArrayOrNil withTempSymbolList: tempSymbolList
  | environment altEnvironment |
  environment := self applicationEnvironment.
  altEnvironment := self todeEnvironment.
  ^ anObject
    ifNil: [ "try environment and if there are undefined globals, then try altEnvironment"
      [ [ environment
        compile: aString
        inContext: anObject
        literalVars: litVarArrayOrNil
        tempSymbolList: tempSymbolList ]
        on: TDUndefinedGlobalNotification
        do: [ :ex | | altUndefined |
          altUndefined := false.
          ex undefinedGlobals
            do: [ :globalName | (altEnvironment globalNamed: globalName) ifNil: [ altUndefined := true ] ].
          altUndefined
            ifTrue: [ "looks like globals are not available in altEnvironment, either. Declare as undefined in applicationEnvironment"
              ex resume: true ].
          ex resume: false	"exception will be passed to outer handler in this method and altEnvironment will be used" ] ]
        on: environment compilerExceptionSet
        do: [ :ex | "all globals should be available in todeEnvironment -- may want an error handler here to explain the situation"
          altEnvironment
            compile: aString
            inContext: anObject
            literalVars: litVarArrayOrNil
            tempSymbolList: tempSymbolList ] ]
    ifNotNil: [ anObject class userId = self todeUserId
        ifTrue: [ environment := altEnvironment ].
      environment
        compile: aString
        inContext: anObject
        literalVars: litVarArrayOrNil
        tempSymbolList: tempSymbolList ]