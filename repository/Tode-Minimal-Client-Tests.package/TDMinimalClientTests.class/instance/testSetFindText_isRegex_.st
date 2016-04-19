tests - deferred
testSetFindText_isRegex_
	self client
		registerService: [ :messagePattern :messagePatternIsRegex :aClient | self halt ]
		for: #setFindText:isRegex:.
