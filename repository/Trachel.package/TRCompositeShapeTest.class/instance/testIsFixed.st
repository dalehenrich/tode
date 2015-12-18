tests
testIsFixed
	| c |
	c := TRCanvas new.
	c addShape: multiShape.
	self deny: multiShape isFixed.
	
	multiShape setAsFixed.
	self assert: multiShape isFixed.