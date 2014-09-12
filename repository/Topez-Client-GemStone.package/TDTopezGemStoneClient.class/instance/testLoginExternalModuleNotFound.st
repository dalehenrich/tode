builtins
testLoginExternalModuleNotFound
	| stream description gciLibraryName expectedLocation gemstoneVersion platformName |
	description := self sessionDescription.
	gciLibraryName := description gciLibraryName.
	gemstoneVersion := description gemstoneVersion.
	expectedLocation := SmalltalkImage current vm path.
	GciLibrary isOnLinux
		ifTrue: [ platformName := 'Linux' ]
		ifFalse: [ 
			GciLibrary isOnMacintosh
				ifTrue: [ platformName := 'Macintosh' ]
				ifFalse: [ platformName := 'Windows' ] ].
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Error running testLogin:';
		cr;
		tab;
		nextPutAll: 'The gci library ' , gciLibraryName printString , ' for GemStone version ' , gemstoneVersion printString;
		cr;
		tab;
		nextPutAll: 'was not found in the expected location ' , expectedLocation printString , '.';
		cr;
		tab;
		nextPutAll: 'Please double check that the GemStone version is correct.';
		cr;
		tab;
		nextPutAll: 'It may be necessary to download a copy of ' , gciLibraryName printString , ' for';
		cr;
		tab;
		nextPutAll: platformName , ' from http://ftp.gemtalksystems.com/pub/GemStone64/' , gemstoneVersion , '.';
		yourself.
	^ stream contents