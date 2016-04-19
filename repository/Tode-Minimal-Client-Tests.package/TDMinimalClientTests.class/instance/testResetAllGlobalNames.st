tests
testResetAllGlobalNames
	| cmdResult |
	self client
		registerService: [ :aClient | 
			self halt.
			nil ]
		for: #resetAllGlobalNames.
	cmdResult := self client evaluate: ''.
