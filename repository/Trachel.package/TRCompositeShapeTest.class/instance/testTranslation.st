testing translation
testTranslation

	multiShape translateTo: 5 @ 6.
	self assert: multiShape position equals: 5 @ 6.
	self assert: box1 position equals: 5 @ 6.
	self assert: box2 position equals: 5 @ 6.