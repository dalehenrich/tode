oop access
oopForWideString: anObject
	| byteArray |
	byteArray := self bytesForWideString: anObject.
	^ OopType64 fromInteger: (self apiGciNewByteObj: self oopClassQuadByteString a: byteArray a: byteArray size)