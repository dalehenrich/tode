public
trachelShapeFor: anEdge
	| trachelShape realControllingElements |
	trachelShape := TRBezierShape new.
	self updateFor: anEdge trachelShape: trachelShape.
"	shape width: (self widthFor: anEdge).
	shape points: (self getListOfPointsForTrachel: anEdge).
	shape strokePaint: (self colorFor: anEdge)."
	realControllingElements := controllingElements rtValue: anEdge. 
	realControllingElements do: [ :e | e addConnectedEdge: anEdge ].
	^ trachelShape