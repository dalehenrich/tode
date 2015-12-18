tests
testPlain

	config plain.
	self assert: config numberOfTicks equals: 0.
	self assert: config numberOfLabels equals: 0.