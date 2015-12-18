sources
exampleedgePaletteColored
| v elem1 elem2 edge|
	v := RTView new.
	elem1 := (RTEllipse new color: (Color blue alpha:0.6); size:10) elementOn: 1.
	elem2 := (RTEllipse new color: (Color blue alpha:0.6); size:10) elementOn: 2.
	elem2 translateBy: 200@0.
	elem1 @ RTDraggable.
	elem2 @ RTDraggable.
	v add: elem1.
	v add: elem2.
	edge := RTEdge from:elem1 to:elem2.
	v add: (edge + (RTMultiColoredLine new colors: (ColorPalette qualitative colors: 12 scheme:'Paired'); colorShape)).
	^ v 