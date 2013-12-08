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
		yourself.
	^ stream contents