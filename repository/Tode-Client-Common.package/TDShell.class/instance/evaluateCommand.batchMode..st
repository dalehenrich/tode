evaluator engine
evaluateCommand: command batchMode: aBool
	(command commandLine notEmpty and: [ command commandLine first = $# ])
		ifTrue: [ ^ '' ].
	command tokens isEmpty
		ifTrue: [ ^ '' ].
	(self builtInCommands includes: command command)
		ifTrue: [ ^ self executeBuiltIn: command ].
	^ (self topezClient evaluateCommand: command batchMode: aBool)
		convertTDEvaluateTokenResponseToText: self objectSerializer