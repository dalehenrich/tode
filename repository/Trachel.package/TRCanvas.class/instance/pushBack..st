actions
pushBack: aShape
	(shapes includes: aShape)
		ifTrue: [ 	
				shapes remove: aShape.
				shapes addFirst: aShape ].

	(fixedShapes includes: aShape)
		ifTrue: [ 	
				fixedShapes remove: aShape.
				fixedShapes addFirst: aShape ]