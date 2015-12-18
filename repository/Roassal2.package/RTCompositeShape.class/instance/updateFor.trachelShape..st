hooks
updateFor: anElement trachelShape: trachelShape
	| ss |
	ss := shapes
		collectWithIndex: [ :tupple :shapeIndex | 
			| s |
			tupple first updateFor: anElement trachelShape: (anElement trachelShape shapes at: shapeIndex).
			s := anElement trachelShape shapes at: shapeIndex.
			Array with: s with: tupple second ].
	trachelShape setShapes: ss.
	trachelShape perform: layout.
	self setAutomaticUpdateLayoutIfNecessaryFor: ss and: trachelShape.
	^ trachelShape
	
