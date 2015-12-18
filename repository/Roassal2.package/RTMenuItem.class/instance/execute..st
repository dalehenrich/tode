public
execute: m
	self callback value.
	self after ifNotNil: [self after value: m.]