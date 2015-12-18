tests
testBasic
	| view stream |
	view := RTView new.
	view add: RTBox element.
	stream := WriteStream on: String new.
	RTHTML5Exporter new 	
		export: view toStream: stream;
		insert: view named: 'foo' inPillarStream: stream.
	