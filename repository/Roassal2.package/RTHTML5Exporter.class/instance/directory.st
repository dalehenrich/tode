accessing
directory
	^ directory ifNil: [ directory := self defaultDirectory ].