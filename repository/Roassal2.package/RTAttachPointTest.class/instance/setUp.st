as yet unclassified
setUp
	
	view := RTView new.
	el1 := RTBox new size: 30; elementOn: 1.
	el2 := RTBox new size: 30; elementOn: 2.
	el1 @ RTDraggable.
	el2 @ RTDraggable.
	
	edge := RTEdge from: el1 to: el2.
	view addAll: (Array with: el1 with: el2 with: edge).
	shape := RTLine new.
	edge + shape.
	RTHorizontalLineLayout on: (Array with: el1 with: el2)
