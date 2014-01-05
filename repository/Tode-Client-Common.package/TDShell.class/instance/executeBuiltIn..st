evaluator engine
executeBuiltIn: command
	| cmd |
	cmd := command command.
	^cmd = 'installTode'
		ifTrue: [ self executeInstallTode: command ]
		ifFalse: [ 
			cmd = 'sessionDescription'
				ifTrue: [ self executeSessionDescription: command ]
				ifFalse: [ cmd = 'restoreBackup'
				ifTrue: [ self executeRestoreBackup: command ]
				ifFalse: [self perform: cmd asSymbol ] ]]