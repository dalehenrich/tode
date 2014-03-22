built-ins
executeBuiltIn: command
	| cmd |
	cmd := command command.
	^ cmd = 'installTode'
		ifTrue: [ self executeInstallTode: command ]
		ifFalse: [ 
			cmd = 'restoreBackup'
				ifTrue: [ self executeRestoreBackup: command ]
				ifFalse: [ 
					cmd = 'updateClient'
						ifTrue: [ self executeUpdateClient: command ]
						ifFalse: [ self perform: cmd asSymbol ] ] ]