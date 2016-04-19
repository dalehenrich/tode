tests
testDbContinue_
	| cmdResult |
	self client
		registerService: [ :processOop :aClient | self halt ]
		for: #dbContinue:.
	cmdResult := self client evaluate: ''