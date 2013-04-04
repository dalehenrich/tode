oop access
oopForWideSymbol: anObject

	| byteArray |
	byteArray := anObject asString asDoubleByteArray.
	^(self apiGciNewByteObj: self oopClassDoubleByteSymbol a: byteArray a: byteArray size) asOop