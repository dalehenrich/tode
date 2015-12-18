tests
testNumberOfTicksAndLabel

	self assert: config numberOfTicks equals: 4.
	self assert: config numberOfLabels equals: 4.
	
	config numberOfLabels: 5.
	self assert: config numberOfTicks equals: 5.
	self assert: config numberOfLabels equals: 5.
