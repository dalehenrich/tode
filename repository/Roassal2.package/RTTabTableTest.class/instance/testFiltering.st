tests
testFiltering

	tab input: 'abc,123,123
5,0,0
1,2,3' usingDelimiter: $,.

	self assert: tab numberOfRows equals: 3.
	tab rejectRow: [ :row | row first = 'abc' ]. 
	self assert: tab numberOfRows equals: 2.
	tab rejectRow: [ :row | row first = 'abc' ].
	self assert: tab numberOfRows equals: 2.