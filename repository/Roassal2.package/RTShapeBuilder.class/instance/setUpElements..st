public - building
setUpElements: elements
	self hasSetShape ifFalse: [ self rectangle ].
	^ elements + shape