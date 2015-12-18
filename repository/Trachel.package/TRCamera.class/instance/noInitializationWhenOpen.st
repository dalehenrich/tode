actions
noInitializationWhenOpen
	"The default behavior, is when a canvas is open, the camera is set at the center of all the elements."
	self toAdjust: (TRCameraInitializer new block: [ :camera | ]).