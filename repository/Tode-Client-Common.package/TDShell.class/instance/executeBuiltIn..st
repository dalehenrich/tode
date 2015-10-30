built-ins
executeBuiltIn: command
	| cmd |
	cmd := command command.
	^ cmd = 'loadServer'
		ifTrue: [ self executeLoadServer: command ]
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
										ifFalse: [ 
											cmd = 'debugMode'
												ifTrue: [ self executeDebugMode: command ]
												ifFalse: [ self perform: cmd asSymbol ] ] ] ] ] ]