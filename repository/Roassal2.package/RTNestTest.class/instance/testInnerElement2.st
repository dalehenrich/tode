composed shape
testInnerElement2

	| v shape e innerBox innerElements |
	v := RTView new.
	
	shape := RTCompositeShape new.
	shape add: (RTBox new size: 20; color: (Color green alpha: 0.3)).
	shape add: (RTBox new size: 20; color: (Color blue alpha: 0.3)) translateBy: 0 @ 20.

	e := shape elementOn: 1.
	v add: e.

	innerBox := RTBox new size: 10; color: (Color red alpha: 0.9).
	innerElements := innerBox elementsOn: #(2 3).
	v addAll: innerElements.
	RTGridLayout on: innerElements.

	RTNest new
		onTrachelShape: e trachelShape shapes second nest: innerElements.  

	self assert: (innerElements collect: #position) asArray equals: (Array with: (-7.0@10.0) with: (8.0@10.0))