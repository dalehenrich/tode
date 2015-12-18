tests
testMinValueIfNotSet
	config minValueIfNotSet: -5.
	config minValueIfNotSet: -2.
	self assert: config minValue equals: -5