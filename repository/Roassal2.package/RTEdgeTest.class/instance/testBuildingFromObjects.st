tests - building
testBuildingFromObjects

	| view objects elements |
	view := RTView new.
	objects := Array with: RTLine with: RTLine superclass.
	elements := (RTBox new size: 20) elementsOn: objects.
	view addAll: elements.
	RTEdge buildEdgesFromObjects: objects from: #yourself to: #superclass inView: view.
	
	self assert: view numberOfElements = 2. 
	self assert: view numberOfEdges = 1.
	edge := view edges last.
	self assert: edge from == elements first.
	self assert: edge to == elements second.
	self assert: edge model notNil.
	self assert: (objects includes: edge model)