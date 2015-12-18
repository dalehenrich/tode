actions
translateBy: aPoint
	self position: self position + aPoint.
	self triggerCallbacksForStep: aPoint