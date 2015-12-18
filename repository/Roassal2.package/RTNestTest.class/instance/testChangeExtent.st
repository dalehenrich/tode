tests
testChangeExtent
	| view el innerElement1 innerElement2 
		elExtent elPosition extent1 extent2 position1 position2 ratio |
	view := RTView new.
	el := (RTBox new color: Color red) element.
	innerElement1 := (RTBox new size: 10) element.
	innerElement2 := (RTBox new size: 20) element.
	el translateTo: 100 @ 50.
	RTNest new
		stretchable;
		layout: RTGridLayout new;
		on: el nest: (Array with: innerElement1 with: innerElement2).
	view add: el; add: innerElement1; add: innerElement2.
	elExtent := el extent.
	elPosition := el position.
	extent1 := innerElement1 extent.
	extent2 := innerElement2 extent.
	position1 := innerElement1 position.
	position2 := innerElement2 position.
	ratio := 0.5.

	el extent: el extent * ratio.
	self assert: el position equals: (100 @ 50).
	self assert: el extent equals: elExtent * ratio.

	self assert: innerElement1 extent equals: extent1 * ratio.
	self assert: innerElement2 extent equals: extent2 * ratio.
	self assert: innerElement1 position equals: elPosition + ((position1 - elPosition) * ratio).
	self assert: innerElement2 position equals: elPosition + ((position2 - elPosition) * ratio).