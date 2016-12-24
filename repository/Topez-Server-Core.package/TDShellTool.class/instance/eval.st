commands
eval
  "
  eval [--help] <smalltalk-expression>...
"

  | contextObject result |
  contextObject := objIn.
  arguments do: [ :expression | | litArray |
      litArray := self doItLiteralArrayFor: contextObject.
      result := expression
        evaluateIn: contextObject
        symbolList: self topez symbolList
        literalVars: litArray ].
  ^ result