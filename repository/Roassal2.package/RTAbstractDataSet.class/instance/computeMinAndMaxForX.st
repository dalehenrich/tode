min and max
computeMinAndMaxForX
	| computed |
	computed := points collect: x.
	minX := computed min.
	maxX := computed max.

	(minX < 0 and: [ maxX < 0 ]) ifTrue: [ maxX := 0 ].
	(minX > 0 and: [ maxX > 0 ]) ifTrue: [ minX := 0 ].
	

