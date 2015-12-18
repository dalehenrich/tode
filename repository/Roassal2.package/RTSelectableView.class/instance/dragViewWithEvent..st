selection events
dragViewWithEvent: e
	view canvas camera translateBy: e step negated / view canvas camera scale.
	e signalUpdate