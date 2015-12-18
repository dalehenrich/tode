actions
translateBy: aPoint
	vertices := vertices collect:[ :each | each + aPoint].
	self triggerCallbacksForStep: aPoint.
	self computePath