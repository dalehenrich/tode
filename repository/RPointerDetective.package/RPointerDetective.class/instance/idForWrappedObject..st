as yet unclassified
idForWrappedObject: anObject
	^ (anObject hash printString , anObject identityHash printString) hash 