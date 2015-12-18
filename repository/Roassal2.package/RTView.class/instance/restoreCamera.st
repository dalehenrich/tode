actions
restoreCamera
	"Reuse a previous camera. This is useful when scripting in a playground"

	self view numberOfElements = 0
		ifTrue: [ self resetCamera ].
	self view canvas camera toAdjust: TRCameraInitializer restorePrevious