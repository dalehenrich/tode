accessing
includesPoint: aPoint
	^ self translatedRectangle containsPoint: (self fromCameraSpaceToOurSpace: aPoint)