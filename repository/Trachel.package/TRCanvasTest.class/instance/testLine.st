tests
testLine
	| line |
	line := canvas buildLineFrom: 2 @ 3 to: 13 @ 15 color: Color blue.
	self assert: line from = (2 @ 3).
	self assert: line to = (13 @ 15).
	
	line translateBy: 3 @ 4.
	self assert: line from = (5 @ 7).
	self assert: line to = (16 @ 19).
