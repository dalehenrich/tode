oop access
oopForWideSymbol: anObject

	| byteArray |
	byteArray := self bytesForWideString: anObject asString.
	^OopType64 fromInteger:(self apiGciNewByteObj: self oopClassQuadByteSymbol a: byteArray a: byteArray size) 