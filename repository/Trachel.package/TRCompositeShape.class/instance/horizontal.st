public - layout
horizontal
	"Layout the shapes horizontally"

	| previousShape newPosition |
	previousShape := self firstShape.
	shapeAndOffsets allButFirst
		do: [ :tuple | 
			newPosition := previousShape center + ((previousShape extent x / 2) @ 0) + ((tuple first extent x / 2) @ 0).
			tuple first translateTo: newPosition.
			tuple at: 2 put: newPosition.
			previousShape := tuple first ].
	self resetInnerShapes