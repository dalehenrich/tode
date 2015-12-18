tests
testUsingFirstRow

	| tabString |
	tabString :=
'
x,y
4,1
2,6
1,3
1,5
'.
	tab := RTTabTable new input: tabString usingDelimiter: $,.
	tab removeFirstRow.
	tab convertColumnsAsInteger: #('x' 'y').
	
	self assert: (tab indexOfName: 'x') equals: 1.
	self assert: (tab indexOfName: 'y') equals: 2.
	
	self assert: (tab valuesOfColumn: 'x') equals: #(4 2 1 1).
	
	self assert: (tab convertFromNameToIndexIfNecessary: 1) equals: 1.
	self assert: (tab convertFromNameToIndexIfNecessary: 100) equals: 100.
	self assert: (tab convertFromNameToIndexIfNecessary: 'x') equals: 1.
	self assert: (tab convertFromNameToIndexIfNecessary: 'y') equals: 2.