instance creation
inContext: aCollection withCommand: aBlock lowColor: lowColor highColor: highColor
	
	| normalizer |
	normalizer := self inContext: aCollection withCommand: aBlock.
	normalizer lowColor: lowColor.
	normalizer highColor: highColor.
	^normalizer