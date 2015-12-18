adding - nodes
nodes: objects forEach: aOneArgBlock
	"Create a set of nodes, each representing an element of objects. Each node then acts as a view on its own."

	| nodes allElements addedElements oldTopLevelNodes oldTopLevelEdges oldShapeBuilder allEdges addedEdges |
	nodes := self nodes: objects.
	nodes do: [ :n | 
		"We push"
		oldTopLevelNodes := topLevelNodes.
		topLevelNodes := OrderedCollection new.
		oldTopLevelEdges := topLevelEdges.
		topLevelEdges := OrderedCollection new.
		nesting := nesting + 1.
		oldShapeBuilder := shapeBuilder.
		self resetShapeBuilder.
		
		"We remember all the elements before adding the inner ones"
		allElements := view elements.	
		allEdges := view edges.
		
		aOneArgBlock rtValue: n model.

		"We identify all the inner elements and edges"
		addedElements := view elements copyWithoutAll: allElements.
		addedEdges := view edges copyWithoutAll: allEdges.

		self applyLayout.
		n shape class == RTCompositeShape
			ifTrue: [ RTNest new on: n inShape: #second nest: addedElements ]
			ifFalse: [ RTNest new on: n nest: addedElements ].

		addedElements do: [ :e | e trachelShape pushFront ].
		
		"We pop"
		shapeBuilder := oldShapeBuilder.
		topLevelNodes := oldTopLevelNodes.
		topLevelEdges := oldTopLevelEdges.		
		nesting := nesting - 1.

		 ].
	self resetShapeBuilder.
	^ nodes