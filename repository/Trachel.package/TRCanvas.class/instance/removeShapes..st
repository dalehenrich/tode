building
removeShapes: someShapes
	shapes := shapes copyWithoutAll: someShapes.
	self removeFixedShapes: someShapes.
	someShapes do: [ :aShape | aShape canvas: nil; triggerRemoveCallbacks ].
	