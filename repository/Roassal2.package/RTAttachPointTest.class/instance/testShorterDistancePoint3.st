as yet unclassified
testShorterDistancePoint3
	| p |
	shape withShorterDistanceAttachPoint.
	"el1 and el2 are on the same horizontal line. el2 is on the left of el1"
	p := el1 position.
	el1 translateBy: 0 @ 80.
	el2 translateTo: p.
	self 
		assert: (shape startingPointOf: edge) 
		equals: (el1 encompassingRectangle topLeft 
					+ ((el1 encompassingRectangle width / 2) @ 0)) asIntegerPoint.
	self 
		assert: (shape endingPointOf: edge) 
		equals: (el2 encompassingRectangle topLeft 
					+ ((el2 encompassingRectangle width / 2) 
							@ el2 encompassingRectangle width)) asIntegerPoint.