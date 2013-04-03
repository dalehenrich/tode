evaluator engine
evaluateCommand: line
  | tokens |
  (line notEmpty and: [ line first = $# ])
    ifTrue: [ ^ '' ].
  tokens := line trimBoth findTokens: {(Character space)}.
  tokens isEmpty
    ifTrue: [ ^ '' ].
  (self builtIns includes: (tokens at: 1))
    ifTrue: [ ^ self executeBuiltIn: tokens ].
  ^ (self topezClient evaluateTokens: tokens) convertTDEvaluateTokenResponseToText