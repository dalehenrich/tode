min and max
computeMinAndMaxForX

	minX := maxX := x rtValue: model.
	(minX < 0 and: [ maxX < 0 ]) ifTrue: [ maxX := 0 ].
	(minX > 0 and: [ maxX > 0 ]) ifTrue: [ minX := 0 ].