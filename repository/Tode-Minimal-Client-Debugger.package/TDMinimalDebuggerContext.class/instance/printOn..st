printing
printOn: aStream
	aStream
		nextPutAll: (self session stackClientElement firstList key at: frameIndex) asString