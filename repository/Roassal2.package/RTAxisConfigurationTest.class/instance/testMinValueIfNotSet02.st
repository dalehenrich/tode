tests
testMinValueIfNotSet02
	config minValueIfNotSet: -5.
	config minValueIfNotSet: -10.
	config minValueIfNotSet: -1.
	self assert: config minValue equals: -10