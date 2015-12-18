contains
testContainsPointAfterTranslation
	| box |
	box := canvas buildRectangle: (0 @ 0 extent: 20 @ 20) color: Color gray.

	box translateBy: 10 @ 10.
	
	self assert: (canvas shapeForPosition: 10 @ 10) == box.
	self assert: (canvas shapeForPosition: 5 @ 5) == canvas.
