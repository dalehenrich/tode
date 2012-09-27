Public
changeLFToCR: aString

	^aString
		copyReplaceAll: Character lf asString
		with: Character cr asString.
