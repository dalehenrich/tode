accessing
exportTo: filepath extension: extension
	| stream |
	stream := FileStream forceNewFileNamed: filepath , self name , extension.
	STON put: self onStream: stream.
	stream close