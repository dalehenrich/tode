evaluator engine
evaluateCommand: line redirectTarget: aRedirectTargetOrNil
  | tokens redirectTarget |
  (line notEmpty and: [ line first = $# ])
    ifTrue: [ ^ '' ].
  tokens := line trimBoth findTokens: {(Character space)}.
  tokens isEmpty
    ifTrue: [ ^ '' ].
  (self builtIns includes: (tokens at: 1))
    ifTrue: [ ^ self executeBuiltIn: tokens ].
  redirectTarget := aRedirectTargetOrNil.
  redirectTarget ifNotNil: [ redirectTarget := redirectTarget trimBoth ].
  ^ (self topezClient evaluateTokens: tokens redirectTarget: redirectTarget)
    convertTDEvaluateTokenResponseToText