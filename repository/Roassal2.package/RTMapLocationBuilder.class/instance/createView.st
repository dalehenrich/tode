hooks
createView
	| v |
	v := super createView.
	self renderAllCountriesIn: v.
	v @ RTDraggableView.
	^ v