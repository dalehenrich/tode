evaluation
processCommand: aCommandString
	"Evaluate aCommandString in a separate Smalltalk process. This permits the
	user interface to remain responsive."

	(self cliShell evaluate: aCommandString)
		ifNotNil: [ :output | 
			| str |
			(str := output asString) notEmpty
				ifTrue: [ 
					self
						show: output asString;
						cr ] ].
	self prompt