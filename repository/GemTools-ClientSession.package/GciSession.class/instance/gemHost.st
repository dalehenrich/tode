accessing
gemHost

	gemNRS isNil ifTrue: [^''].
	^((gemNRS subStrings: '#') first subStrings: '@') last.
	