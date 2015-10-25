builtins
testLoginGciVersionMismatch: ex
	| stream description netLDI stoneHost gciLibraryName gemstoneVersion stoneName |
	description := self sessionDescription.
	netLDI := description netLDI.
	stoneHost := description stoneHost.
	gciLibraryName := description gciLibraryName.
	gemstoneVersion := description gemstoneVersion.
	stoneName := description stoneName.
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
		nextPutAll: 'The gci library ' , gciLibraryName printString , ' you are using may not be compatable with';
		cr;
		tab;
		nextPutAll:
				'with the netldi. Please check that the netLDI ' , netLDI printString , ' running on host ' , stoneHost printString;
		cr;
		tab;
		nextPutAll: 'is the same version as (or is compatable with) version ' , gemstoneVersion printString;
		cr;
		tab;
		nextPutAll: 'Finally, you should make sure that the stone ' , stoneName printString , ' is running';
		cr;
		tab;
		nextPutAll: 'on host ' , stoneHost printString , '.';
		cr;
		cr;
		tab;
		nextPutAll: 'NOTE: netldi log can be found in the file: ''$GS_HOME/server/stones/', stoneName, '/logs/netldi.log''.';
		cr;
		tab;
		yourself.
	^ stream contents