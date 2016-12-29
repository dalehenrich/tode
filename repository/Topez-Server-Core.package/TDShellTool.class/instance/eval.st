commands
eval
  "
  eval [--help] <smalltalk-expression>...
"

  | contextObject result |
  contextObject := objIn.
  arguments do: [ :expression | | litArray |
      litArray := self doItLiteralArrayFor: contextObject.
      result := self topez
        evaluateString: expression
        inContext: contextObject
        literalVars: litArray ].
  ^ result