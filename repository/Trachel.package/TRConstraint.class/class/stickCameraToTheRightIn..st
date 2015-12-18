public - camera
stickCameraToTheRightIn: trachelCanvas
	trachelCanvas
		when: TRResizeCanvasEvent
		do: [ :event | self moveCameraToTheRightIn: trachelCanvas ]