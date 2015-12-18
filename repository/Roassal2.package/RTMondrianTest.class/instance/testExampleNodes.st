tests - nodes
testExampleNodes

	b node: '1'
		forIt: [ 
			b shape rectangle.
			b nodes: (1 to:2).
			b layout verticalLine ].
	b node: '2'
		forIt: [ 
			b shape circle
				size: 10;color:Color green.
			b nodes: (3 to:4).
			b layout tree ].
	b layout horizontalLine.
	b build.
	
	self assert: (b view canvas shapes collect: #position) asArray equals: ((Array new: 6) at: 1 put: ((7.5@15.0)); at: 2 put: ((8.0@7.5)); at: 3 put: ((8.0@22.5)); at: 4 put: ((41.5@10.0)); at: 5 put: ((35.5@10.0)); at: 6 put: ((48.5@10.0)); yourself)
	