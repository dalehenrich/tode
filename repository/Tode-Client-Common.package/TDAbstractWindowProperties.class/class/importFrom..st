STON
importFrom: filepath
	FileStream
		readOnlyFileNamed: filepath
		do: [ :fileStream | ^ TodeObjectSerializer preferredSerializer fromString: fileStream contents ]