as yet unclassified
interactWith: aString
	| interaction |
	interaction := STON fromString: aString.
	^STON toString: interaction interact