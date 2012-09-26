Public
executeString: aString

	| result |
	self class gsCursor showWhile: [
		result := self executeStringNB: aString
	].
	^result.
