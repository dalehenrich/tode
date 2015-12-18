actions
translateTo: newPosition
	| step |
	step := newPosition - position.
	position := newPosition.
	self triggerCallbacksForStep: step.