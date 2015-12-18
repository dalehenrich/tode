util
setTitleIfNecessary
	"This method has to be called after having added the elements in the view"
	| label g |
	title ifEmpty: [ ^ self ].
	g := RTGroup withAll: view elements.
	label := (RTLabel new text: title) element.
	TRConstraint move: label below: g.
	view add: label