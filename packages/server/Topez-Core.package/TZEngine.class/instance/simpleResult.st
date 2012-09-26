testing
simpleResult

	| object |
	object := STON listClass withAll: { 1. 0. -1. true. false. nil }.
	^self class toString: object