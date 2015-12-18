testing translation
testTranslationBy2

	multiShape translateBy: 5 @ 6.
	multiShape translateBy: 5 @ 6.
	self assert: multiShape position equals: 10 @ 12.
	self assert: box1 position equals: 10 @ 12.
	self assert: box2 position equals: 10 @ 12.