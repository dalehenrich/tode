position
testPositionDefault

	self shapesForPositionTest do: [ :eachShapeClass |
		self assert: eachShapeClass new position equals: (0 @ 0)
	]