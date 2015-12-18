sources
exampleSequentialPalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	CPSequential new viewOn: v.
	^ v