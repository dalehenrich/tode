*Tode-Client-Common
editTemplateOn: stream
	stream
		nextPutAll: self class name asString;
		nextPutAll: ' new';
		cr;
		tab;
		nextPutAll: 'name: ' , self name printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'gemstoneVersion: ' , self gemstoneVersion printString;
		nextPut: $;.
	(gciLibraryName notNil and: [ gciLibraryName isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'gciLibraryName: ' , self gciLibraryName printString;
				nextPut: $; ].
	stream
		cr;
		tab;
		nextPutAll: 'stoneHost: ' , self stoneHost printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'stoneName: ' , self stoneName printString;
		nextPut: $;.
	(gemHost notNil and: [ gemHost isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'gemHost: ' , self gemHost printString;
				nextPut: $; ].
	stream
		cr;
		tab;
		nextPutAll: 'netLDI: ' , self netLDI printString;
		nextPut: $;.
	stream
		cr;
		tab;
		nextPutAll: 'netLDIPort: ' , self netLDIPort printString;
		nextPut: $;.
	netLDIPortRange notNil
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'netLDIPortRange: ' , self netLDIPortRange printString;
				nextPut: $; ].
	(gemTask notNil and: [ gemTask isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'gemTask: ' , self gemTask printString;
				nextPut: $; ].
	stream
		cr;
		tab;
		nextPutAll: 'userId: ' , self userId printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'password: ' , self password printString;
		nextPut: $;.
	(osUserId notNil and: [ osUserId isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'osUserId: ' , self osUserId printString;
				nextPut: $; ].
	(osPassword notNil and: [ osPassword isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'osPassword: ' , self osPassword printString;
				nextPut: $; ].
	stream
		cr;
		tab;
		nextPutAll: 'backupDirectory: ' , self backupDirectory printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'snapshotDirectory: ' , self snapshotDirectory printString;
		nextPut: $;.
	(dataDirectory notNil and: [ dataDirectory isEmpty not ])
		ifTrue: [ 
			stream
				cr;
				tab;
				nextPutAll: 'dataDirectory: ' , self dataDirectory printString;
				nextPut: $; ].
	stream
		cr;
		tab;
		nextPutAll: 'serverGitRoot: ' , self serverGitRoot printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'serverTodeRoot: ' , self serverTodeRoot printString;
		nextPut: $;;
		cr;
		tab;
		nextPutAll: 'yourself'