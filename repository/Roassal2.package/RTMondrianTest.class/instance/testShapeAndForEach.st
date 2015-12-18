tests - interaction
testShapeAndForEach

	| i nodes |
	i := b shape.
	nodes := 
	b nodes: #(1 2) forEach: [ :each |
		self assert: b shape ~~ i
	].
	self assert: nodes first shape == nodes second shape