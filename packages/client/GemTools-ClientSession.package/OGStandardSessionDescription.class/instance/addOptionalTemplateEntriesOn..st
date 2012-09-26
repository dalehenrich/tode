template
addOptionalTemplateEntriesOn: aStream

	self dataDirectory isEmpty
		ifFalse: [
			aStream
 				cr; tab;
				nextPutAll: 'dataDirectory: ', self dataDirectory printString; nextPut: $; ].