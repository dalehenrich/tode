min and max
computeMinAndMaxForX
	minX := 1.
	maxX := builder getMaxNumberOfPoints.

	(minX < 0 and: [maxX < 0]) ifTrue: [ maxX := 0 ].
	(minX > 0 and: [maxX > 0]) ifTrue: [ minX := 0 ].
	
