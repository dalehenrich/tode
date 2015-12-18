tests
testEmptyColumn

	tab input: ',,' usingDelimiter: $,.
	self assert: tab numberOfColumns equals: 3