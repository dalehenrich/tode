private
computeRectangle
	form 
		ifNil: [ rectangle := (-2.5 @ -2.5) corner: (2.5 @ 2.5) ]
		ifNotNil: [ rectangle := form boundingBox translateBy: form boundingBox center negated ].