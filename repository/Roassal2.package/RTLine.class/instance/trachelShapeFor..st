hooks
trachelShapeFor: anEdge
	| shape |
	shape := TRLineShape new.
	shape width: width.
	shape from: (attachPoint startingPointOf: anEdge) to: (attachPoint endingPointOf: anEdge).
	shape color: (self colorFor: anEdge).
	^ shape