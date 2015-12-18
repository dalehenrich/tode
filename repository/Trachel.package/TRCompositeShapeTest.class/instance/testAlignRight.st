tests
testAlignRight

	box2 translateBy: 5 @ 5.
	self assert: box1 position equals: (0 @ 0).
	self assert: box2 position equals: (5 @ 5).
	multiShape alignRight.
	self assert: box1 position equals: (0 @ 0).
	self assert: box2 position equals: (0 @ 0).
	multiShape relayout.
	
	"Below is a strange result!"
	self assert: box1 position equals: (10 @ 0).
	self assert: box2 position equals: (15 @ 5).


"TRCanvas new addShape: multiShape ; yourself"