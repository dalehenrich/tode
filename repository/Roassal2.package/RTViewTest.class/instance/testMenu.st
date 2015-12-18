menu
testMenu

	view add: (RTEllipse new size: 50) element.
	view addMenu: 'foo' callback: [  ].
	self assert: view canvas numberOfShapes = 1.
	self assert: view canvas numberOfFixedShapes = 1.