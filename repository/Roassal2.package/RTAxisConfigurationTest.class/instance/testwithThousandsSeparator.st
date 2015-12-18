tests
testwithThousandsSeparator
	config withThousandsSeparator.
	self assert: (config getStringFromNumber: 1000) equals: '1,000'.
	self assert: (config getStringFromNumber: 1000000) equals: '1,000,000'.