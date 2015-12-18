building
removeShape: shape
	shapes remove: shape ifAbsent: [ self removeFixedShape: shape ].
	shape canvas: nil.
	shape triggerRemoveCallbacks