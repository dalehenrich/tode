hooks
createShapeBuilder
	| s |
	s := super createShapeBuilder.
	s rectangle color: (Color blue alpha: 0.3).
	^ s