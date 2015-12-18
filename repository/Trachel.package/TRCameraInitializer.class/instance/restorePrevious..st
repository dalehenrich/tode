utility
restorePrevious: camera
	
	| canvas |
	LastCamera ifNil: [ LastCamera := camera ].
	canvas := camera canvas.
	canvas camera: LastCamera.
	LastCamera canvas: canvas