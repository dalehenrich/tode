commands
eval
  "
  eval [--help] <smalltalk-expression>...
"

  | contextObject result |
  contextObject := objIn.
  arguments
    do: [ :expression | 
      result := expression
        evaluateInContext: contextObject
        symbolList: GsSession currentSession symbolList ].
  ^ result