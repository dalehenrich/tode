tests
testRemovingLine

	| line |
	line := TRLineShape new from: 50 @ 50 to: 100 @ 80.
	self deny: line isInACanvas.
	canvas addShape: line.
	self assert: line isInACanvas.
	
	line remove.
	self deny: line isInACanvas.
	
	line remove.
	self deny: line isInACanvas.
