tests - error handling
testCommandError
	self client debugMode: true.
	self
		executeShould: [ self client evaluateCommands: 'foo `3+4`' ]
		inScopeOf: TDCommandErrorNotification
		withDescriptionContaining: 'Unknown command: ''foo'''