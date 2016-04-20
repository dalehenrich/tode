tests - deferred
testDbStep_forProcessOop_
	self client
		registerService: [ :level :processOop :aClient | self halt ]
		for: #dbStep:forProcessOop:.
