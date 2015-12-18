accessing
shapeWithAction: eventClass forPositionInPixels: position
	"position is in pixel, it corresponds to the physical location in the window.
	e.g., 0 @ 0 is top left of the window"
	| pos |
	fixedShapes reverseDo: [ :s | 
		((s includesPoint: position) and: [ s announcer handleEventClass: eventClass ]) ifTrue: [ ^ s ] ].
	pos := self camera fromPixelToSpace: position.
	shapes reverseDo: [ :s | 
		((s includesPoint: pos) 
			and: [ s announcer handleEventClass: eventClass ]) ifTrue: [ ^ s ] ].
	^ self