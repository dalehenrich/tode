accessing
encompassingRectangle
	"Really ugly method."
	| ans c |
	(self shapes anySatisfy: [ :s | s canvas notNil ])
		ifTrue: [ ^ Rectangle merging: (self shapes collect: #encompassingRectangle). ]. 
	
	c := shapeAndOffsets collect: [ :s | s first position ].
	self positionShapesAfterBeingAdded.
	ans := Rectangle merging: (self shapes collect: #encompassingRectangle).
	shapeAndOffsets with: c do: [ :s :p | s first translateTo: p ].
	^ ans