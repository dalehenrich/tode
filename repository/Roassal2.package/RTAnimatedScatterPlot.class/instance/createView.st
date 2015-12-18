UI
createView
	| v |
	v := RTView new.
	v setDefaultMenu.
	v @ RTDraggableView.
	^ v