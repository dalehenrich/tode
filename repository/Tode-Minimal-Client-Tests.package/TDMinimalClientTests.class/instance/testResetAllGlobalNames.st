tests
testResetAllGlobalNames
	| resetAllGlobals |
	self client
		registerService: [ :aClient | 
			resetAllGlobals := true.
			nil ]
		for: #resetAllGlobalNames.
	resetAllGlobals := false.
	self client session send: #resetAllGlobalNames to: self client todeServerOopType.
	self assert: resetAllGlobals