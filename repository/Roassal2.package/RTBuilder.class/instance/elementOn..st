protected
elementOn: anObject
	| element |
	element := shapeBuilder elementOn: anObject.
	interactionBuilder setUpElements: element.
	^ element