tests - deferred
testDbContinue_
	self client
		registerService: [ :processOop :aClient | self halt ]
		for: #dbContinue:.
