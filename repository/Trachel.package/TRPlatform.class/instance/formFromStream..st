public
formFromStream: aStream
	^ self formClass fromBinaryStream: (self mimeDecodeToBytes: aStream)