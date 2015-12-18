tests - building
testBuildingFromAssociations

	| view elements |
	view := RTView new.
	elements := RTBox elementsOn: #(1 2).
	view addAll: elements.

	RTEdgeBuilder new
		view: view;
		fromAssociations: (Array with: 1 -> 2).
	
	self assert: view numberOfElements = 2.
	self assert: view numberOfEdges = 1.
	edge := view edges last.
	self assert: edge from == view elements first.
	self assert: edge to == view elements second.
	
	self assert: edge trachelShape class == TRLineShape.
	
	