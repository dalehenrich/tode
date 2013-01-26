accessing
evaluateTopezScriptCommand: line
  | tokens result |
  (line notEmpty and: [ line first = $# ])
    ifFalse: [ 
      tokens := line trimBoth findTokens: {(Character space)}.
      tokens isEmpty
        ifFalse: [ 
          result := self evaluateTokens: tokens objIn: objIn value.
          objIn value: result ] ].
  ^ result