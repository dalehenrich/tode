tests
testShapingElement

	| circle |
	circle := canvas buildCircleFrom: 20 @ 20 to: 100 @ 80 color: Color red.

	self assert: circle encompassingRectangle = ((20 @ 20) corner: (100 @ 80)).
	
	circle translateBy: -20 @ -20.
	self assert: circle encompassingRectangle = ((0 @ 0) corner: (80 @ 60)).