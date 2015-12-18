actions
translateBy: aPoint
	position := position + aPoint.
	self triggerCallbacksForStep: aPoint