commands
eval
  "
  eval [--help] <smalltalk-expression>...
"

  | contextObject result |
  contextObject := objIn.
  arguments
    do: [ :expression | 
      | litArray |
      litArray := self doItLiteralArrayFor: contextObject.
      result := (expression
        _compileInContext: contextObject
        symbolList: GsSession currentSession symbolList
        oldLitVars: litArray
        environmentId: 0) _executeInContext: contextObject ].
  ^ result