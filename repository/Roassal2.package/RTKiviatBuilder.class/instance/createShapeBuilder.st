hooks
createShapeBuilder
"redefinition for default shape"
	| sb |
	sb := super createShapeBuilder.
	sb shape: (RTEllipse new color: (Color blue alpha: 0.3); size: 10).
	^ sb