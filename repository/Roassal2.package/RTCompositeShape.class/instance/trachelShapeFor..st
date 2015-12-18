public
trachelShapeFor: anElement
"	^ self updateFor: anElement trachelShape: TRMultiCompositeShape new"
	
	| ss trachelShape |
	trachelShape := TRCompositeShape new.
	ss := shapes
		collectWithIndex: [ :tupple :shapeIndex | 
			| s |
			s := tupple first trachelShapeFor: anElement.
			Array with: s with: tupple second ].
	trachelShape setShapes: ss.
	trachelShape perform: layout.
	self setAutomaticUpdateLayoutIfNecessaryFor: ss and: trachelShape.
	^ trachelShape
	
