builtins
testLoginGciVersionMismatch: ex
	| stream description netLDI stoneHost gciLibraryName gemstoneVersion |
	description := self sessionDescription.
	netLDI := description netLDI.
	stoneHost := description stoneHost.
	gciLibraryName := description gciLibraryName.
	gemstoneVersion := description gemstoneVersion.
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Error running testLogin:';
		cr;
		cr;
		nextPutAll: ex description printString;
		cr;
		cr;
		tab;
		nextPutAll: 'Unable to connect to netLDI ' , netLDI printString , ' on host ' , stoneHost printString , '.';
		cr;
		tab;
		nextPutAll: 'The gci library ' , gciLibraryName printString , ' you are using is not compatable';
		cr;
		tab;
		nextPutAll:
				'with the netldi. Please check that the netLDI ' , netLDI printString , ' running on host ' , stoneHost printString;
		cr;
		tab;
		nextPutAll: 'is the same version as (or is compatable with) version ' , gemstoneVersion printString;
		cr;
		yourself.
	^ stream contents