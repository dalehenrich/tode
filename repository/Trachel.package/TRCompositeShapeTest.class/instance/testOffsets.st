tests
testOffsets

	self assert: multiShape offsets asArray equals: (Array with: 0 @ 0 with: 0 @ 0).
	box2 translateBy: 5 @ 6.
	self assert: multiShape offsets asArray  equals: (Array with: 0 @ 0 with: 0 @ 0).