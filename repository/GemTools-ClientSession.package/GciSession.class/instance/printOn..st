printing
printOn: aStream

	super printOn: aStream.
	aStream space; nextPut: $[; nextPutAll: number printString; nextPut: $]