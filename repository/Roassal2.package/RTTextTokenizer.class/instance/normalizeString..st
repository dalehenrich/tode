private
normalizeString: aString
	"It replaces tab characters by spaces, because tabs are not well handled by Athens."
	^ String streamContents: [ :aStream |
		aString do: [ :eachChar |
			eachChar = Character tab
				ifTrue: [ aStream nextPutAll: '       ' ]
				ifFalse: [ aStream nextPut: eachChar ]
			 ]		
	]