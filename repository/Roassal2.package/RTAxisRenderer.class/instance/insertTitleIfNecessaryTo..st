public-rendering
insertTitleIfNecessaryTo: toPosition
	| lbl |
	self title notEmpty
		ifTrue: [ 
			lbl := (RTLabel new text: self title) element.
			self addToView: lbl.
			lbl translateTo: toPosition - config titlePosition ]