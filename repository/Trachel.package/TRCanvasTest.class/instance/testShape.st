tests
testShape
	| shape |
	shape := canvas buildRectangle: (5 @ 5 extent: 20 @ 20) color: Color gray.
	self assert: shape notNil.
