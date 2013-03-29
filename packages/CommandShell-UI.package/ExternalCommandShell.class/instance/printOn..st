printing
printOn: aStream

	super printOn: aStream.
	aStream nextPutAll: (self isRunning ifTrue: [' (running)'] ifFalse: [' (stopped)'])
