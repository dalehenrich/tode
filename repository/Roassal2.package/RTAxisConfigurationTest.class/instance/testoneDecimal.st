tests
testoneDecimal
	config oneDecimal.
	self assert: (config labelConversion rtValue: 1000) equals: 1000.0.
	self assert: (config labelConversion rtValue: 1000000) equals: 1000000.0.