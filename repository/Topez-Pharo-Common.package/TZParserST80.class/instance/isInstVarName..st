identifier testing
isInstVarName: aString
	| dotIndex |
    (instanceVariables includes: aString)
        ifTrue: [ ^ true ].
	dotIndex := aString indexOf: $..
	dotIndex = 0
		ifTrue: [ ^ false ].
	^ self isInstVarName: (aString copyFrom: 1 to: dotIndex - 1)