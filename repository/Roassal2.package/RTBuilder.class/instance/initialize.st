initialization
initialize
	super initialize.
	title := self defaultWindowName.
	view := self createView.
	self resetShape.
	self resetInteraction.
