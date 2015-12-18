actions
addedIn: aCanvas atIndex: index
	self propagateElement.
	shapeAndOffsets
		do: [ :tuple | 
			aCanvas addShape: tuple first atIndex: index.
			tuple first translateBy: tuple second ].
		
	"Make sure we are in the center"
	self translateBy: self position negated