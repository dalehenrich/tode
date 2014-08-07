identifier testing
isBlockArgName: aString
	| temp arg dotIndex |
	blockDepth to: 1 by: -1 do: [ :level | 
		arg := (arguments at: level ifAbsent: [ #() ]) includes: aString.
		arg
			ifTrue: [ ^ true ].
		temp := (temporaries at: level ifAbsent: [ #() ]) includes: aString.
		temp
			ifTrue: [ ^ false ] ].
	dotIndex := aString indexOf: $..
	dotIndex = 0
		ifTrue: [ ^ false ].
	^ self isBlockArgName: (aString copyFrom: 1 to: dotIndex - 1)