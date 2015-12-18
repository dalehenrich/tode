public
fromRectangle: newRectangle
	| step |
	step := newRectangle center - self position.
	rectangle := newRectangle translateBy: newRectangle center negated.
	self position: newRectangle center.
	self resetPath.
	self triggerCallbacksForStep: step.