oop access
bytesForWideString: anObject
	| byteArray littleEndianByteArray |
	byteArray := anObject asByteArray.
	littleEndianByteArray := ByteArray new: byteArray size.
	1 to: byteArray size by: 4 do: [ :index | 
		| word |
		word := byteArray longAt: index bigEndian: true.
		littleEndianByteArray longAt: index put: word bigEndian: false ].
	^ littleEndianByteArray