accessing
positionFromCamera
	"Return the position from the camera. I.e., 0 @ 0 is at the center of the window"
	^ canvas camera fromPixelToSpace: self position