composed shape
testInnerElement1

	| v shape e innerBox innerElement |
	v := RTView new.

	shape := RTCompositeShape new.
	shape add: (RTBox new size: 20; color: (Color green alpha: 0.3)).
	shape add: (RTBox new size: 20; color: (Color blue alpha: 0.3)) translateBy: 0 @ 20.

	e := shape elementOn: 1.
	v add: e.

	innerBox := RTBox new size: 10; color: (Color red alpha: 0.9).
	innerElement := innerBox elementOn: 2.
	v add: innerElement.

	RTNest new
		onTrachelShape: e trachelShape shapes second nest: (Array with: innerElement).  

	self assert: innerElement position equals: 0 @ 10