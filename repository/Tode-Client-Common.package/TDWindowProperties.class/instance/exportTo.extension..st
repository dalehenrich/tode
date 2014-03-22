STON
exportTo: filepath extension: extension
	| stream |
	stream := FileStream forceNewFileNamed: filepath , extension.
	STON put: self onStream: stream.
	stream close