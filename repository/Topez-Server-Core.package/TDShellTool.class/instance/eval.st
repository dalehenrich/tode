commands
eval
  "
  eval [--help] [--env=<environmentId>] <smalltalk-expression>...
"

  | contextObject result environmentId |
  contextObject := objIn.
  environmentId := 0.
  options at: 'env' ifPresent: [ :envId | environmentId := envId asNumber ].
  arguments
    do: [ :expression | 
      | litArray |
      litArray := self doItLiteralArrayFor: contextObject.
      result := self topez
        evaluateString: expression
        inContext: contextObject
        literalVars: litArray
        withTempSymbolList: SymbolList new
        environmentId: environmentId ].
  ^ result