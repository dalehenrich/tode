evaluator engine
evaluateCommand: command
	| tokens |
	(command commandLine notEmpty and: [ command commandLine first = $# ])
		ifTrue: [ ^ '' ].
	tokens := command tokens.
	tokens isEmpty
		ifTrue: [ ^ '' ].
	(self builtIns includes: (tokens at: 1))
		ifTrue: [ ^ self executeBuiltIn: tokens ].
	^ (self topezClient evaluateCommand: command) convertTDEvaluateTokenResponseToText