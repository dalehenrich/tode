hooks
renderIn: aView
	self buildSchema: aView.
	self buildEdges.
	self applyLayout