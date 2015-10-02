*Tode-Client-Common
editTemplate
	| stream |
	stream := WriteStream on: String new.
	stream
		nextPutAll: '"Select and execute the entire expression to save new description to disk."';
		cr;
		nextPutAll: '('.
	self editTemplateOn: stream.
	stream nextPutAll: ') exportTo: TDShell gsDevKitSessionDescriptionPath.'.
	^ stream contents