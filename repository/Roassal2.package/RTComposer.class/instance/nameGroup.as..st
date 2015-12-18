public-naming
nameGroup: aName as: title
	| lbl |
	lbl := (RTLabel new text: title) element.
	TRConstraint move: lbl above: (mapping at: aName).
	view add: lbl.
	^ lbl