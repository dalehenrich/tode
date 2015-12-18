running
setUp
	super setUp.
	nodes := OrderedCollection new.
	
	(0 to: 10) do: [ :e | nodes add: (RTBox element translateTo: e @ e); 
								add: (RTBox element translateTo: e @ (10 - e)) ].
	
	quad := RTQuadTree withAll: nodes.