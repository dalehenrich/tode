tests
testNoMoveBehind

	RTEdgeBuilder new
		view: view;
		fromAssociations: (Array 
									with: 1 -> 2
									with: 2 -> 3
									with: 5 -> 6).
	self assert: (view canvas shapes collect: [ :c | c class name ]) asArray equals: #(#TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRLineShape #TRLineShape #TRLineShape)