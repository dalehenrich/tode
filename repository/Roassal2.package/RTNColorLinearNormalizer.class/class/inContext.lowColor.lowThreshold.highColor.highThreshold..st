instance creation
inContext: aCollection lowColor: lowColor lowThreshold: lowThreshold highColor: highColor highThreshold: highThreshold
	
	| normalizer |
	normalizer := self inContext: aCollection.
	normalizer lowColor: lowColor.
	normalizer highColor: highColor.
	normalizer minBrightness: lowThreshold.
	normalizer maxBrightness: highThreshold.
	^normalizer