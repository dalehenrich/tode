view
testAddingAndRemoving

	| view e tr |
	view := RTView new.
	tr := view canvas.
	e := RTBox element.
	
	self assert: e view isNil.
	self assert: tr numberOfShapes = 0.
	view add: e.
	self assert: e view == view.
	self assert: tr numberOfShapes = 1.
	
	e remove.
	self assert: view numberOfElements = 0.
	self assert: tr numberOfShapes = 0.
	self assert: e view isNil.