public
updateFor: anEdge trachelShape: trachelShape
	| shape fromPoint toPoint p|
	fromPoint := attachPoint startingPointOf: anEdge.
	toPoint := attachPoint endingPointOf: anEdge.
	p := path value: fromPoint value: toPoint.
	
	2 to: (p size) do: [ :i |
		shape := trachelShape shapes at: i - 1.
		shape width: width.
		shape from: (p at: i - 1) to: (p at: i).
		shape color: (colorArray atWrap: (i - 1)).
	].
	^ trachelShape