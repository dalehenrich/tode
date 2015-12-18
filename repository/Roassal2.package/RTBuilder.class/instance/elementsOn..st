protected
elementsOn: collectionOfObjects
	| elements |
	elements := shapeBuilder elementsOn: collectionOfObjects.
	interactionBuilder setUpElements: elements.
	^ elements