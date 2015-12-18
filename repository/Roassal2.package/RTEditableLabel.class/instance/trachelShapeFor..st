rendering
trachelShapeFor: anElement
	|  shape |
	
	shape := super trachelShapeFor: anElement.
	anElement when: TRMouseDoubleClick do: [ :evt | 
		self showTextMorphFor: anElement ].
	anElement when: TRMouseLeave do: [ :evt |
		self hideTextMorphFor: anElement. ].
	^ shape