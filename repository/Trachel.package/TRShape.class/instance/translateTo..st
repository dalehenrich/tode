actions
translateTo: aPoint
	| oldPosition |
	oldPosition := self position.
	self position: aPoint.
	self triggerCallbacksForStep: (self position - oldPosition)