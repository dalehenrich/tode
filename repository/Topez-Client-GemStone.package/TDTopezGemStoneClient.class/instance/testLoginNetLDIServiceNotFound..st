builtins
testLoginNetLDIServiceNotFound: ex
	| stream description netLDI stoneHost |
	description := self sessionDescription.
	netLDI := description netLDI.
	stoneHost := description stoneHost.
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
		nextPutAll:
				'Please make sure that the netLDI ' , netLDI printString , ' is running on host ' , stoneHost printString , ',';
		cr;
		tab;
		nextPutAll: 'is listening on the correct port, and that you can reach host ' , stoneHost printString;
		cr;
		tab;
		nextPutAll: 'from this machine.';
		cr;
		cr;
		tab;
		nextPutAll: 'NOTE: netldi log can be found in the file: ''$GS_HOME/server/stones/', description stoneName, '/logs/netldi.log''.';
		cr;
		yourself.
	^ stream contents