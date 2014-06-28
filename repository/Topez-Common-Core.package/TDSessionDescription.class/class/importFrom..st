instance creation
importFrom: filepath
	FileStream readOnlyFileNamed: filepath do: [ :fileStream | ^(STON fromStream: fileStream) asTDSessionDescription ].
