as yet unclassified
interactWith: aString
	| interaction |
	interaction := self objectSerializer fromString: aString.
	^self objectSerializer toString: interaction interact