tests
testSpawnDebugger_
	| cmdResult |
	self client
		registerService: [ :aDebuggerLabel :aClient | self halt ]
		for: #spawnDebugger:.
	cmdResult := self client evaluate: ''