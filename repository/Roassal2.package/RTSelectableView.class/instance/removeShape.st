as yet unclassified
removeShape
	(self getOrCreateShapeForView) remove.
	view attributes removeKey: self key.
	view signalUpdate.