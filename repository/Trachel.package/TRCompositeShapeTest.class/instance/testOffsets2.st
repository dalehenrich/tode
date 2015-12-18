tests
testOffsets2 
	box2 translateBy: 5 @ 6.
	emptyShape addShape: box1; addShape: box2.
	"Humm.... I do not really understand this. is offset always made of 0@0?"
	self assert: emptyShape offsets asArray equals: (Array with: 0 @ 0 with: 0 @ 0).