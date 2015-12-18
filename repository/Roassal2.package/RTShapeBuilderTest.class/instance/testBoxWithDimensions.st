tests
testBoxWithDimensions
	| shape |
	builder rectangle width: [ :v | v + 3 ].
	shape := builder shape.
	self assert: shape class == RTBox.
	self assert: (shape widthFor: (RTElement on: 5)) = 8