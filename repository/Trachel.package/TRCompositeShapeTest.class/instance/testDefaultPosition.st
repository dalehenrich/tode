testing translation
testDefaultPosition
	self assert: emptyShape position equals: 0 @ 0.
	self assert: multiShape position equals: 0 @ 0.
	self assert: box1 position equals: 0 @ 0.
	self assert: box2 position equals: 0 @ 0.