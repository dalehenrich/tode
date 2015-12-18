tests
testCameraPosition2

	view canvas camera translateTo: 6 @ 4.
	self assert: exporter cameraPositionNegated equals: (0 @ 0).