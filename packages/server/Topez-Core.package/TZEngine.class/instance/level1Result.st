testing
level1Result

	| object |
	object := STON listClass withAll: { 1. 0. -1.  STON listClass withAll: {true. false.}. nil }.
	^self class toString: object