sources
exampleB

	| v elem1 elem2 edge |
	v := RTView new.

	elem1 := (RTEllipse new color: (Color red alpha:0.3); size:20) elementOn: 1.
	elem2 := (RTEllipse new color: (Color red alpha:0.9); size:20) elementOn: 2.
	elem2 translateBy: 300@0.
	v add: elem1.
	v add: elem2.
	
	edge := RTEdge from:elem1 to:elem2.
	v add: (edge + (RTGradientColoredLine new colors: (Array with: (elem1 color) with: (elem2 color)); precision: 100; gradientColorShape)).

^ v