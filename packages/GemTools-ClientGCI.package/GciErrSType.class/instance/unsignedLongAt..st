Private
unsignedLongAt: anInteger

	| b1 b2 b3 b4 result |
	b1 := address byteAt: anInteger + 0.
	b2 := address byteAt: anInteger + 1.
	b3 := address byteAt: anInteger + 2.
	b4 := address byteAt: anInteger + 3.
	result := b4 * 256 + b3 * 256 + b2 * 256 + b1.
	^result.
		