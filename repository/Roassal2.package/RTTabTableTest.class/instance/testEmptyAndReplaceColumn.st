tests
testEmptyAndReplaceColumn

	tab input: ',,' usingDelimiter: $,.
	tab replaceEmptyValuesWith: 0 inColumns: #(1 2 3).
	self assert: tab numberOfColumns equals: 3.
	self assert: tab values first equals: #(0 0 0)