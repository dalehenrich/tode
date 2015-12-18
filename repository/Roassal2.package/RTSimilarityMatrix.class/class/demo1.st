as yet unclassified
demo1
	^ RTSimilarityMatrix new
		on: (1 to: 50)
		by: [ :a :b |
			(a + b) odd
				ifTrue: [ 1 ]
				ifFalse: [ 0 ]
			];
		viewMatrix