Private
readSimpleFields

	category := self oopTypeAt: 1.
	number := self unsignedLongAt: 5.
	context := self oopTypeAt: 9.
	fatal := (address byteAt: 48 + self maxMessageSize) = 1.
