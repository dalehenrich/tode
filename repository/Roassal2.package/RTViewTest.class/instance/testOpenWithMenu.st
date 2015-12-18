opening
testOpenWithMenu

	| window |
	window := view openWithMenu.
	self assert: view numberOfElements equals: 0.
	self assert: view canvas numberOfFixedShapes > 0.
	window delete.