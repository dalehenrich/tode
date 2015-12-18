initialization
initialize
	super initialize.
	y := #yourself.
	self resetAddedElements.
	self axisX
		noTick;
		noLabel.
	numberOfBars := self defaultNumberOfBars.
	self useAnimation.