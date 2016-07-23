instance creation
importFrom: filepath
	[ FileStream
		readOnlyFileNamed: filepath
		do: [ :fileStream | 
			^ (TodeObjectSerializer preferredSerializer
				fromString: fileStream contents) asTDSessionDescription ] ]
		on: FileDoesNotExistException
		do: [ :ex | 
			self
				error:
					'The session description file ' , ex fileName printString
						, ' cannot be found.' ]