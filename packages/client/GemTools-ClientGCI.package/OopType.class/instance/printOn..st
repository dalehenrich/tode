printing
printOn: aStream

	aStream nextPutAll: 'Oop('.
	self asInteger printOn: aStream.
	aStream nextPut: $).
	
		