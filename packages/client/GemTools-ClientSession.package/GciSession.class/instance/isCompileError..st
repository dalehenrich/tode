Private
isCompileError: anObject

	^(anObject isKindOf: GciErrSType) and: [
		anObject category = self library oopGemStoneError and: [
		anObject number = 1001]].
