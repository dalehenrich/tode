template
editTemplate

	| stream |
	stream := WriteStream on: String new.
	stream 
		nextPutAll: self class name asString; nextPutAll: ' new';
		cr; tab;
		nextPutAll: 'name: ', self name printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'stoneHost: ', self stoneHost printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'stoneName: ', self stoneName printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'gemHost: ', self gemHost printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'netLDI: ', self netLDI printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'userId: ', self userId printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'password: ', self password printString; nextPut: $;;
		cr; tab;
		nextPutAll: 'backupDirectory: ', self backupDirectory printString; nextPut: $;.
	self addOptionalTemplateEntriesOn: stream.
	stream 
		cr; tab;
		nextPutAll: 'yourself.'.
	^stream contents