STON
exportTo: filepath extension: extension
	| stream |
	stream := FileStream forceNewFileNamed: filepath , extension.
	stream lineEndConvention: #'lf'.
	STON put: self onStreamPretty: stream.
	stream close