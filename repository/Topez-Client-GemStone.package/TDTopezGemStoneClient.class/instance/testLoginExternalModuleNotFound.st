builtins
testLoginExternalModuleNotFound
	| stream description gciLibraryName expectedLocation gemstoneVersion platformName |
	description := self sessionDescription.
	gciLibraryName := description gciLibraryName.
	gemstoneVersion := description gemstoneVersion.
	GciLibrary isOnLinux
		ifTrue: [ 
			platformName := 'Linux'.
			expectedLocation := 'tODE_3.1.app/Contents/Linux/' ]
		ifFalse: [ 
			GciLibrary isOnMacintosh
				ifTrue: [ 
					platformName := 'Macintosh'.
					expectedLocation := 'tODE_3.1.app/Contents/MacOS/Plugins/' ]
				ifFalse: [ 
					platformName := 'Windows'.
					expectedLocation := 'tODE_3.1.app/' ] ].
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