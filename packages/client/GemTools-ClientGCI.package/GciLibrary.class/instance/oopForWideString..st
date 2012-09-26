oop access
oopForWideString: anObject

	| byteArray |
	byteArray := anObject asQuadByteArray.
	^(self apiGciNewByteObj: self oopClassQuadByteString a: byteArray a: byteArray size) asOop