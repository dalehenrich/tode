Wrapper
localFor: anOopType

	| type |
	type := self apiGciFetchObjImpl: anOopType.
	type = 1 ifTrue: [^self localForBytes: anOopType].
	type = 3 ifTrue: [^self localForSpecial: anOopType].
	^anOopType.
