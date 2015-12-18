instance creation
inContext: aCollection lowColor: lowColor highColor: highColor
	
	| normalizer |
	normalizer := self inContext: aCollection.
	normalizer lowColor: lowColor.
	normalizer highColor: highColor.
	^normalizer