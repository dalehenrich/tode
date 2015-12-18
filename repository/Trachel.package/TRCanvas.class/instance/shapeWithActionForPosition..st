accessing
shapeWithActionForPosition: position
	"Return a Trachel Shape for a given position that answer events"
	fixedShapes reverseDo: [ :s | 
		((s includesPoint: position) and: [ s hasEventCallback ]) ifTrue: [ ^ s ] ].

	shapes reverseDo: [ :s | 
		((s includesPoint: position) and: [ s hasEventCallback ]) ifTrue: [ ^ s ] ].
	^ self