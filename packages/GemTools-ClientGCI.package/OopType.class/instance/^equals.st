comparison
= anOopType

	^self class == anOopType class and: [
		self asOop = anOopType asOop].
	