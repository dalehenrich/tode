tests
testSetFindText_isRegex_
	| cmdResult |
	self client
		registerService: [ :messagePattern :messagePatternIsRegex :aClient | self halt ]
		for: #setFindText:isRegex:.
	cmdResult := self client evaluate: ''