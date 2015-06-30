STON
exportTo: filepath extension: extension
	(filepath , extension) asFileReference
		writeStreamDo: [ :stream | 
			stream lineEndConvention: #lf.
			stream nextPutAll: (TodeObjectSerializer preferredSerializer toStringPretty: self) ]