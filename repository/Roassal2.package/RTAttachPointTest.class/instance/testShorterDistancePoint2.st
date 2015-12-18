as yet unclassified
testShorterDistancePoint2
	| p |
	shape withShorterDistanceAttachPoint.
	"el1 and el2 are on the same horizontal line. el2 is on the left of el1"
	p := el1 position.
	el1 translateTo: el2 position.
	el2 translateTo: p.
	self 
		assert: (shape startingPointOf: edge) 
		equals: (el1 encompassingRectangle topLeft 
					+ (0 @ (el1 encompassingRectangle extent y / 2))) asIntegerPoint.
	self 
		assert: (shape endingPointOf: edge) 
		equals: (el2 encompassingRectangle topRight 
					+ (0 @ (el2 encompassingRectangle extent y / 2))) asIntegerPoint.