adding - edges
setLineShapeIfNecessary
	(self nodeShape class inheritsFrom: RTAbstractLine)
		ifFalse: [ self shape line ]