tests
testGathering

	tab input: '1 A
2 B
1 A
1 A
5 B' usingDelimiter: $ .
	tab convertColumn: 1 to: #asInteger.
	tab gather: 2 using: [ :row1 :row2 | Array with: row1 first + row2 first with: row1 second ].
	self assert: (tab values asArray = #( #(3 'A') #(7 'B')))