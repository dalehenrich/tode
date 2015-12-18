tests
testTranslatingNode
	| old |
	RTView new
		add: el1;
		add: el2;
		add: edge;
		setUpCanvas.

	old := edge trachelShape from.
	self assert: edge trachelShape from = el1 position.
	self assert: edge trachelShape to = el2 position.
	
	el1 translateBy: 10 @ 5.
	self assert: edge trachelShape from = (old + (10 @ 5)).
	self assert: edge trachelShape from = el1 position.
	self assert: edge trachelShape to = el2 position.