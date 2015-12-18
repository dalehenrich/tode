tests
testConvertAsInteger

	tab input: '5.4,1.2,0,hello world' usingDelimiter: $,.
	tab convertColumnsAsInteger: #(1 2 3).
	self assert: tab values first equals: #(5 1 0 'hello world')