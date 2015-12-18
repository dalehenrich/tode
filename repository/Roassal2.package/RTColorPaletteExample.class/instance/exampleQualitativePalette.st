sources
exampleQualitativePalette
	| v |
	v := RTView new.
	v @ RTDraggableView.
	CPQualitative new viewOn: v.
	^ v