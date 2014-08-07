identifier testing
isMethodTempName: aString
	| temp dotIndex |
	((arguments at: 0 ifAbsent: [ #() ]) includes: aString)
		ifTrue: [ ^ false ].
	temp := (temporaries at: 0 ifAbsent: [ #() ]) includes: aString.
	temp
		ifTrue: [ ^ true ].
	dotIndex := aString indexOf: $..
	dotIndex = 0
		ifTrue: [ ^ false ].
	^ self isMethodTempName: (aString copyFrom: 1 to: dotIndex - 1)