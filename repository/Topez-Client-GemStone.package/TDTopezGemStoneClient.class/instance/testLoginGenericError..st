builtins
testLoginGenericError: ex
	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: 'Error running testLogin:';
		cr;
		cr;
		nextPutAll: ex description printString;
		cr;
		cr;
		tab;
		nextPutAll: 'NOTE: netldi log can be found in the file: ''$GS_HOME/server/stones/<stone-name>/logs/netldi.log''.';
		cr;
		yourself.
	^ stream contents