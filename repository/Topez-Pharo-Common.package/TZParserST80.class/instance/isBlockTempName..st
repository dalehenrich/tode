identifier testing
isBlockTempName: aString
	| temp arg dotIndex |
	blockDepth to: 1 by: -1 do: [ :level | 
		arg := (arguments at: level ifAbsent: [ #() ]) includes: aString.
		arg
			ifTrue: [ ^ false ].
		temp := (temporaries at: level ifAbsent: [ #() ]) includes: aString.
		temp
			ifTrue: [ ^ true ] ].
	dotIndex := aString indexOf: $..
	dotIndex = 0
		ifTrue: [ ^ false ].
	^ self isBlockTempName: (aString copyFrom: 1 to: dotIndex - 1)