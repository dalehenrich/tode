tests
testInstance

	| s |
	self assert: RTBox instance class == RTBox.
	self assert: RTBox instance ~~ RTBox instance.
	
	s := RTBox instance.
	self assert: s instance == s.