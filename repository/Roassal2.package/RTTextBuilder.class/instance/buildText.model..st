protocol
buildText: aText model: anObject
	| el |
	el := RTElement on: anObject.
	hook value: el.
	shapeBuilder setUpElements: el.
	interactionBuilder setUpElements: el.
	view add: el.
	self buildText: aText in: el.
	^ el