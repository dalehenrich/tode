public
trachelShapeFor: anEdge
	| shape multiShape fromPoint toPoint p |
	fromPoint := attachPoint startingPointOf: anEdge.
	toPoint := attachPoint endingPointOf: anEdge.
	p := path value: fromPoint value: toPoint.
	
	multiShape := TRCompositeShape new.
	2 to: p size do: [ :i |
		shape := TRLineShape new.
		shape width: width.
		shape from: (p at: i - 1) to: (p at: i).
		shape color: (colorArray atWrap: (i - 1)).
		multiShape addShape: shape.
	].
	^ multiShape