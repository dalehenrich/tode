tests
testWithOneValueAndExtent
	| shape e obj |
	obj := #(1).
	shape := RTSparkline new 
					width: 30;
					height: 20;
					values: [ :tuple | tuple + 10 ].
	e := shape elementOn: obj.
	self assert: (shape valuesFor: e) = (obj + 10).
	
	self assert: (shape heightFor: e) equals: 20.
	self assert: (shape widthFor: e) equals: 30.

	self assert: e trachelShape basicEncompassingRectangle extent equals: 30 @ 20.
	self assert: e trachelShape encompassingRectangle extent equals: 30 @ 20.
	self assert: e extent equals: 30 @ 20.
	