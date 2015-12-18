public
points: points
	self assert: [ points size = 3 ] description: 'Only 3 points may be provided'.
	listOfPoints := points