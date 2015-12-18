as yet unclassified
addShapesToView
	
	self shapes collection do: [ :s | self view canvas addFixedShape: s ].