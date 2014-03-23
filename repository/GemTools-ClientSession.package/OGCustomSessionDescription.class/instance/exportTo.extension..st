accessing
exportTo: filepath extension: extension
	| stream |
	stream := FileStream forceNewFileNamed: filepath , self name , extension.
	stream lineEndConvention: #'lf'.
	STON put: self onStreamPretty: stream.
	stream close