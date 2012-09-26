private
readSimpleFields

	category := self oopTypeAt: 1.
	context := self oopTypeAt: 9.
	number := self unsignedLongAt: 97.
	fatal := (address byteAt: 103) = 1.
