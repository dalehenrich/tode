UI
setViewTitle
	labelShape := TRLabelShape new text: 'Hello'.
	view canvas addFixedShape: labelShape.
	TRConstraint stickAtTheBottomOfTheWindow: labelShape 
