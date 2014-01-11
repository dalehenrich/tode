printing
printOn: aStream
	aStream nextPutAll: self class name asString , '(' , self commandLine printString , ')'