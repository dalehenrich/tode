oop access
oopForWideSymbol: anObject

	| byteArray |
	byteArray := anObject asString asQuadByteArray.
	^(self apiGciNewByteObj: self oopClassQuadByteSymbol a: byteArray a: byteArray size) asOop