menu commands
accept
	| commandLine |
	commandLine := self commandLineInput asString.
	self model
		cr;
		flush.
	(commandLine notEmpty and: [ commandLine last = $\ ])
		ifTrue: [  ]
		ifFalse: [ self model processCommand: self commandLineInput asString ]