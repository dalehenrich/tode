instance creation
inContext: aCollection withCommand: aBlock lowColor: lowColor lowThreshold: lowThreshold highColor: highColor highThreshold: highThreshold
	
	| normalizer |
	normalizer := self inContext: aCollection withCommand: aBlock.
	normalizer lowColor: lowColor.
	normalizer highColor: highColor.
	normalizer minBrightness: lowThreshold.
	normalizer maxBrightness: highThreshold.
	^normalizer