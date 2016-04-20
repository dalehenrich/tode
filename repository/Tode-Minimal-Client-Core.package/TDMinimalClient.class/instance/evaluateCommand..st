commands
evaluateCommand: command
	| cmdResult stonString |
	(command commandLine notEmpty and: [ command commandLine first = $# ])
		ifTrue: [ ^ '' ].
	command tokens isEmpty
		ifTrue: [ ^ '' ].
	stonString := self objectSerializer toString: command.
	cmdResult := self session send: #evaluateSTONCommand: to: todeServerOopType withArgs: {stonString}.
	^ cmdResult convertTDEvaluateTokenResponseToText: self objectSerializer