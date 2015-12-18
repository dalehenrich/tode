as yet unclassified
element: anElement box: aRectangle color: aColor borderWidth: anInteger borderColor: anotherColor
	self element: anElement.
	self box: aRectangle.
	self fillColor: aColor.
	self strokeWidth:  anInteger.
	self strokeColor: anotherColor.
	self points: (self setPoints: anElement in: aRectangle).