evaluator engine
executeBuiltIn: command
	| cmd |
	cmd := command command.
	cmd = 'login'
		ifTrue: [ self executeLogin: command ]
		ifFalse: [ self perform: cmd asSymbol ].
	^ cmd