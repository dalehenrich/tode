menu
testAddLayoutMenu

	view addLayoutMenu.
	self assert: view canvas numberOfFixedShapes > 0.
	self assert: view canvas numberOfShapes equals: 0