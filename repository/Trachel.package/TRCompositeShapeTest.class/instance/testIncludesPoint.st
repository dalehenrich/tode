tests
testIncludesPoint

	self assert: (multiShape includesPoint: 5 @ 5).
	self deny: (multiShape includesPoint: -65 @ 5)