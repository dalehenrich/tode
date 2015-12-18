tests
testWithMoveBehind

	RTEdgeBuilder new
		view: view;
		moveBehind;
		fromAssociations: (Array 
									with: 1 -> 2
									with: 2 -> 3
									with: 5 -> 6).
	self assert: (view canvas shapes collect: [ :c | c class name ]) asArray equals: #(#TRLineShape #TRLineShape #TRLineShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape #TRBoxShape)