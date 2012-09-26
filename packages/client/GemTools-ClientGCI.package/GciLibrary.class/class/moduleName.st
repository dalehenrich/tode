overrides
moduleName

	| path |
	self isOnWindows 	ifTrue: [^'gciForWindows.dll'].
	self isOnMacintosh 	ifTrue: [^'gciForMacintosh.so'].
	self isOnLinux 		ifFalse: [self error: 'Unknown platform!'].
	path := SmalltalkImage current vmPath , 'so.gciForLinux'.
	(FileDirectory new fileExists: path) ifTrue: [^'gciForLinux'].
	^'gciForLinux.so'.
