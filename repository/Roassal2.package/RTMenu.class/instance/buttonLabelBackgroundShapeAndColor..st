accessing
buttonLabelBackgroundShapeAndColor: aColor
	| box |
	
	box := TRBoxShape new extent: label encompassingRectangle extent + (10@7).
	self labelBackground: box.
	box color: aColor.
	self saveLabelBackgroundColor.
	box strokePaint: "(Color black)"nil.
	TRConstraint move: box onTheCenterOf: label.

	view canvas addFixedShape: box.
	box pushBack.