callbacks
addCallbackToAllShapes: aCallback
	^ self shapesDo: [ :s | s addCallback: aCallback ]