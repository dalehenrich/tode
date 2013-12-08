evaluator engine
executeBuiltIn: command
	| cmd |
	cmd := command command.
	cmd = 'installTode'
		ifTrue: [ self executeInstallTode: command ]
		ifFalse: [ 
			cmd = 'sessionDescription'
				ifTrue: [ self executeSessionDescription: command ]
				ifFalse: [ self perform: cmd asSymbol ] ]