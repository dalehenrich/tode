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
      result := expression
        evaluateIn: contextObject
        symbolList: GsSession currentSession symbolList
        literalVars: litArray ].
  ^ result