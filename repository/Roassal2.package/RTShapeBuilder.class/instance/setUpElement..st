public - building
setUpElement: anElement
	self hasSetShape ifFalse: [ self rectangle ].
	^ anElement + shape