public - building
elementsOn: objects
	| answer |
	self hasSetShape ifFalse: [ self rectangle ].
	answer := shape elementsOn: objects.
	createdElements addAll: answer.
	^ answer