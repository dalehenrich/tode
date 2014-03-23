built-ins
executeBuiltIn: command
	| cmd |
	cmd := command command.
	^ cmd = 'updateServer'
		ifTrue: [ self executeUpdateServer: command ]
		ifFalse: [ 
			cmd = 'restoreBackup'
				ifTrue: [ self executeRestoreBackup: command ]
				ifFalse: [ 
					cmd = 'script'
						ifTrue: [ self executeScript: command ]
						ifFalse: [ 
							cmd = 'sessionDescription'
								ifTrue: [ self executeSessionDescription: command ]
								ifFalse: [ 
									cmd = 'updateClient'
										ifTrue: [ self executeUpdateClient: command ]
										ifFalse: [ self perform: cmd asSymbol ] ] ] ] ]