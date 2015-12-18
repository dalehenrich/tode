public
trachelShapeFor: anEdge
	| trachelShape realControllingElements |
	trachelShape := TRSVGPath new.
	self updateFor: anEdge trachelShape: trachelShape.
	
	realControllingElements := controllingElements rtValue: anEdge. 
	realControllingElements do: [ :e | e addConnectedEdge: anEdge ].
	^ trachelShape