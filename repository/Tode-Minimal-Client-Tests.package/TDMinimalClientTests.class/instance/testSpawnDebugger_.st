tests
testSpawnDebugger_
	self client
		registerService: [ :aDebuggerLabel :aClient | self halt ]
		for: #spawnDebugger:.
