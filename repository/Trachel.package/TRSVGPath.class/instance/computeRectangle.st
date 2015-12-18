private
computeRectangle
	| allPoints |
	allPoints := polygons inject: #() into: [ :acc :next | acc , next ].
	rectangle := Rectangle encompassing: allPoints.
	^ allPoints