private
readSimpleFields

	category := self oopTypeAt: 1.
	context := self oopTypeAt: 9.
	exceptionObj := self oopTypeAt: 17 .
	number := self unsignedLongAt: 105 .
	fatal := (address byteAt: 113) = 1.  "assuming a one-based offset"
