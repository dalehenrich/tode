public - layout
verticalAndLeft
	"Layout the shapes vertically and aligned on the left hand side"
	TRConstraint alignFromLeft: (shapeAndOffsets collect: #first).
	RTVerticalLineLayout new gapSize: 0; on: (shapeAndOffsets collect: #first).
	shapeAndOffsets doWithIndex: [ :tuple :index | tuple at: 2 put: (tuple first position "x @ (index * 20)") ].
	self resetInnerShapes.


"	| previousShape newPosition maxWidth offsetX |
	maxWidth := (shapeAndOffsets collect: [ :tuple | tuple first width ]) max.
	
	previousShape := shapeAndOffsets first first.
	shapeAndOffsets allButFirst do: [ :tupple |
		offsetX := (maxWidth - tupple first width) / -4.
		newPosition := (previousShape center + (offsetX @ (previousShape extent y / 2)) + (0 @ (tupple first extent y / 2))).
		tupple first translateTo: newPosition.
		tupple at: 2 put: newPosition.
		previousShape := tupple first ].
	self resetInnerShapes"