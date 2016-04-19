tests
testCommand
	self assert: (self client evaluate: 'eval `3+4`') = 7