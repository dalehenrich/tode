identifier testing
isMethodArgName: aString
	| dotIndex arg |
	arg := (arguments at: 0 ifAbsent: [ #() ]) includes: aString.
	arg
		ifTrue: [ ^ true ].
	dotIndex := aString indexOf: $..
	dotIndex = 0
		ifTrue: [ ^ false ].
	^ self isMethodArgName: (aString copyFrom: 1 to: dotIndex - 1)