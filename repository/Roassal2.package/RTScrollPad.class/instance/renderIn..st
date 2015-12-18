as yet unclassified
renderIn: aView
	
	(self view elements isEmpty) ifTrue: [self defaultEncompassingRectangle] ifFalse: [ self encompassingRectangleUpdate ].
	self encompassingRectangleFromSpaceToPixelUpdate.
	
	self defineShapes.
	self addShapesToView.
	self addAnimations.





	