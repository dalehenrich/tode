tests
testWithQuote

	tab input: 'abc,def,"ghi,ijk"' usingDelimiter: $,.
	self assert: tab numberOfColumns equals: 3