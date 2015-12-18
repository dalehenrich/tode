tests
testTranslation
	camera translateTo: 5 @ 3.
	self assert: camera position = (5 @ 3).
	
	camera translateBy: 2 @ 4.
	self assert: camera position = (7 @ 7).