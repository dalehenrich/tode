tests
testBasic

	RTView new
		add: el1;
		add: el2;
		add: edge;
		setUpCanvas.
	self assert: edge trachelShape notNil.
	self assert: edge trachelShape color notNil