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
		nextPutAll: 'stoneName: ', self stoneName printString; nextPut: $;.
	self addOptionalTemplateEntriesOn: stream.
	stream 
		cr; tab;
		nextPutAll: 'yourself.'.
	^stream contents