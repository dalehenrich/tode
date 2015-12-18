initialization
initialize
	super initialize.
	view := RTView new.
	view @ RTDraggableView.
	groups := OrderedCollection new.
	mapping := Dictionary new.
	gap := 20