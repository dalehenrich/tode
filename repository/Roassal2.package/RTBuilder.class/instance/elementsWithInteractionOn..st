protected
elementsWithInteractionOn: collectionOfObjects
	| els |
	els := shapeBuilder elementsOn: collectionOfObjects.
	self setUpInteractionFor: els.
	^ els