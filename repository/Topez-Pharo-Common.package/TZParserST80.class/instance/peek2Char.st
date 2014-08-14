scan
peek2Char
	^ source
		at: sourcePosition + 2
		ifAbsent: [Character space]