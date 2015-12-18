initialization
initialize
	super initialize.
	position := 0 @ 0.
	scale := self defaultCameraScale.
	initializer := TRCameraInitializer focusOnCenter