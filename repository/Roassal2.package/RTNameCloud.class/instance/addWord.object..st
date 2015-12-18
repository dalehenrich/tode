adding
addWord: aWordAsString object: object
	"object is an object for which its description contains aWordAsString"
	| w |
	w := self addWord: aWordAsString.
	
	"If the word is not valid, then we do nothing"
	(self isValidWord: w) ifFalse: [ ^ self ].
	
	tableObjects at: w ifAbsentPut: [ Set new ].
	(tableObjects at: w) add: object