tests
testFilteringPerColumn

	tab input: 'abc,123,123
5,0,0
1,2,3' usingDelimiter: $,.

	tab convertColumnAsInteger: 2.
	self assert: tab numberOfRows equals: 3.
	tab rejectInColumn: 2 row: #isZero. 
	self assert: tab numberOfRows equals: 2.

	tab rejectInColumn: 2 row: #isZero. 
	self assert: tab numberOfRows equals: 2.

	tab rejectRow: [ :row | row first = 'abc' ].
	self assert: tab numberOfRows equals: 1.