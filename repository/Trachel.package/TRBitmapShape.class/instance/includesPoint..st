testing
includesPoint: aPoint
	| invertedPoint |
	invertedPoint := matrix inverseTransform: aPoint.
	^ self basicEncompassingRectangle containsPoint: invertedPoint.