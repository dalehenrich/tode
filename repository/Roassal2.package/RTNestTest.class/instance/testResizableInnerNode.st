tests
testResizableInnerNode
	"If we resize an inner node, the outter node should be resized"
	| outter inner |
	outter := RTBox element.
	inner := (RTBox new color: Color blue) element.

	self deny: inner trachelShape hasCallback.
	self deny: outter trachelShape hasCallback.
	RTNest new 
		onResizable: outter nest: (Array with: inner).
"	self deny: outter trachelShape hasCallback."
	self assert: inner trachelShape hasCallback.
	
	self assert: outter encompassingRectangle extent = (15 @ 15).
	self assert: inner encompassingRectangle extent = (5 @ 5).
	
	inner extent: 10 @ 10.
	self assert: inner encompassingRectangle extent = (10 @ 10).
	self assert: outter encompassingRectangle extent = (20 @ 20).
	
