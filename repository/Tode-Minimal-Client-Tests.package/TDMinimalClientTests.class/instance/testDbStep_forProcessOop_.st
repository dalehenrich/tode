tests
testDbStep_forProcessOop_
	| cmdResult |
	self client
		registerService: [ :level :processOop :aClient | self halt ]
		for: #dbStep:forProcessOop:.
	cmdResult := self client evaluate: ''