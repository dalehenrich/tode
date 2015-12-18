position
testPosition

	self shapesForPositionTest do: [ :s | | eachShapeClass |
		eachShapeClass := TRBoxShape new.
		eachShapeClass translateTo: 10 @ 20.
		self assert: eachShapeClass position = (10 @ 20)
	]