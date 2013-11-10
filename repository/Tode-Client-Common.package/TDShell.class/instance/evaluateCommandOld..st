evaluator engine
evaluateCommandOld: command
  | tokens redirectTarget |
  (command commandLine notEmpty and: [ command commandLine first = $# ])
    ifTrue: [ ^ '' ].
  tokens := command tokens.
  tokens isEmpty
    ifTrue: [ ^ '' ].
  (self builtIns includes: (tokens at: 1))
    ifTrue: [ ^ self executeBuiltIn: tokens ].
  redirectTarget := command redirectTarget.
  redirectTarget ifNotNil: [ redirectTarget := redirectTarget trimBoth ].
  ^ (self topezClient evaluateTokens: tokens redirectTarget: redirectTarget)
    convertTDEvaluateTokenResponseToText