template
editTemplate
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: '('.
	self editTemplateOn: stream.
	stream
		nextPutAll: ') exportTo: TDShell sessionDescriptionHome.';
		cr;
		nextPutAll: 'TDShell testLogin: ' , self name printString , '.'.
	^ stream contents