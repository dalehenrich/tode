adding
addWord: aWordAsString
	| w |
	w := self prepareWord: aWordAsString.
	(self isValidWord: w) ifTrue: 
		[ tableFrequency at: w ifAbsentPut: [ 0 ].
		  tableFrequency at: w put: (tableFrequency at: w) + 1 ].
	^ w