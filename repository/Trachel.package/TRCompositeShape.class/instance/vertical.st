public - layout
vertical
	"Layout the shapes vertically"

	| previousShape newPosition |
	previousShape := self firstShape.
	shapeAndOffsets allButFirst
		do: [ :tupple | 
			newPosition := previousShape center + (0 @ (previousShape extent y / 2)) + (0 @ (tupple first extent y / 2)).
			tupple first translateTo: newPosition.
			tupple at: 2 put: newPosition.
			previousShape := tupple first ].
	self resetInnerShapes