evaluator engine
evaluateCommand: command
	(command commandLine notEmpty and: [ command commandLine first = $# ])
		ifTrue: [ ^ '' ].
	command tokens isEmpty
		ifTrue: [ ^ '' ].
	(self builtIns includes: command command)
		ifTrue: [ ^ self executeBuiltIn: command ].
	^ (self topezClient evaluateCommand: command) convertTDEvaluateTokenResponseToText