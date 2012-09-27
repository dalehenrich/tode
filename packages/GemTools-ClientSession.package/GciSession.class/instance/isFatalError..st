Private
isFatalError: anObject

	^(anObject isKindOf: GciErrSType) 
		and: [ anObject category = self library oopGemStoneError 
		and: [ (4000 < anObject number) 
		and: [anObject number < 5001]]].
