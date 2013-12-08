template
editTemplate
	| stream |
	stream := WriteStream on: String new.
	self editTemplateOn: stream.
	^ stream contents