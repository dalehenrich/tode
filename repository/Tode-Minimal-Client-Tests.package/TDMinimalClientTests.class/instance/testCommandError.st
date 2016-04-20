tests - error handling
testCommandError
	self client debugMode: true.
	self
		executeShould: [ self client evaluate: 'foo `3+4`' ]
		inScopeOf: TDCommandErrorNotification
		withDescriptionContaining: 'Unknown command: ''foo'''