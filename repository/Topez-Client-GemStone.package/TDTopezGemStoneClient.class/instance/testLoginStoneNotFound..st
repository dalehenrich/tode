builtins
testLoginStoneNotFound: ex
	| stream description stoneName stoneHost netLDI gemstoneVersion |
	description := self sessionDescription.
	stoneHost := description stoneHost.
	stoneName := description stoneName.
	netLDI := description netLDI.
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
		nextPutAll: 'Unable to reach stone ' , stoneName printString , ' on host ' , stoneHost printString , '.';
		cr;
		tab;
		nextPutAll:
				'Please make sure that the stone ' , stoneName printString , ' is running on host ' , stoneHost printString , '.';
		cr;
		tab;
		nextPutAll:
				'If there is a netLDI running on host ' , stoneHost printString , ' make sure that netldi ' , netLDI printString;
		cr;
		tab;
		nextPutAll: 'is associated with GemStone version ' , gemstoneVersion printString , '.';
		cr;
		yourself.
	^ stream contents