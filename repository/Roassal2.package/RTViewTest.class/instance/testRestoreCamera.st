camera
testRestoreCamera
	"
	self debug: #testRestoreCamera
	"

	view resetCamera.
	view add: (RTBox element).
	view restoreCamera.
	view canvas camera translateTo: 5 @ 5.
	view setUpCanvas.
	
	view := RTView new.
	view add: (RTBox element).
	view restoreCamera.
	self assert: view canvas camera position equals: 0 @ 0.

	view setUpCanvas.
	self assert: view canvas camera position equals: 5 @ 5.