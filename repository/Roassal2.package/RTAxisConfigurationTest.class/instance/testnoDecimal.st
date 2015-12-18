tests
testnoDecimal
	config noDecimal.
	self assert: (config getStringFromNumber: 1000) equals: '1000'.
	self assert: (config getStringFromNumber: 1000000) equals: '1000000'