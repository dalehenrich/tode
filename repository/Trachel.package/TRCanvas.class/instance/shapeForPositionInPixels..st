accessing
shapeForPositionInPixels: position
	"position is in pixel, it corresponds to the physical location in the window.
	e.g., 0 @ 0 is top left of the window"
	fixedShapes reverseDo: [ :s | 
		(s includesPoint: position) ifTrue: [ ^ s ] ].

	shapes reverseDo: [ :s | 
		(s includesPoint: (self camera fromPixelToSpace: position)) ifTrue: [ ^ s ] ].
	^ self