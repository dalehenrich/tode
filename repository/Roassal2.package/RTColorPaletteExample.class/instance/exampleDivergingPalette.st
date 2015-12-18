sources
exampleDivergingPalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	CPDiverging new viewOn: v.
	^ v