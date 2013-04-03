oop access
oopForWideString: anObject

	| byteArray |
	byteArray := anObject asDoubleByteArray.
	^(self apiGciNewByteObj: self oopClassDoubleByteString a: byteArray a: byteArray size) asOop