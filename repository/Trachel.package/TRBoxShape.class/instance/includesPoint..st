testing
includesPoint: aPoint
	| invertedPoint |
	(matrix sx = 0 or: [ matrix sy = 0  ]) ifTrue: [ ^ false ].
	invertedPoint := matrix inverseTransform: aPoint.
	^ rectangle containsPoint: invertedPoint.