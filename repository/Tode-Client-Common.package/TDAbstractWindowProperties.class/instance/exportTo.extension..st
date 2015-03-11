STON
exportTo: filepath extension: extension
	(filepath , extension) asFileReference
		writeStreamDo: [ :stream | 
			stream lineEndConvention: #lf.
			STON put: self onStreamPretty: stream ]