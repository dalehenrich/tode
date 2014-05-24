built-ins
displaySessionDescription
	| description stream |
	description := self topezClient sessionDescription.
	stream := WriteStream on: String new.
	stream
		nextPutAll: '| description |';
		cr;
		nextPutAll: 'description := '.
	description editTemplateOn: stream.
	^ stream contents