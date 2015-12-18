hooks
trachelShapeFor: anEdge
	| shape points fromP toP |
	shape := TRBezierShape new.
	shape width: width.
	fromP := attachPoint startingPointOf: anEdge.
	toP := attachPoint endingPointOf: anEdge.
	points := self pointsFrom: fromP To: toP.
	shape points: points color: (self colorFor: anEdge).
	^ shape