template
addOptionalTemplateEntriesOn: aStream

	self backupDirectory isEmpty
		ifFalse: [ 
			aStream cr; tab.
			aStream nextPutAll: 'backupDirectory: ', self backupDirectory printString; nextPut: $; ].
	self dataDirectory isEmpty
		ifFalse: [
			aStream
 				cr; tab;
				nextPutAll: 'dataDirectory: ', self dataDirectory printString; nextPut: $; ].