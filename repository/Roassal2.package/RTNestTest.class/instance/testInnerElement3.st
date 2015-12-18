composed shape
testInnerElement3

	| v shape e innerBox innerElements |

	v := RTView new.

	shape := RTCompositeShape new.
	shape add: (RTBox new size: 20; color: (Color green alpha: 0.3)).
	shape add: (RTBox new size: 20; color: (Color blue alpha: 0.3)) translateBy: 0 @ 20.

	e := shape elementOn: 1.

	innerBox := RTBox new size: 10; color: (Color red alpha: 0.9).
	innerElements := innerBox elementsOn: #(2 3).
	
	RTVerticalLineLayout on: innerElements.

	RTNest new
		onTrachelShape: e trachelShape shapes second nest: innerElements.  

	e trachelShape vertical.
	
	v add: e.
	v addAll: innerElements.
	
	self assert: (innerElements collect: #position) asArray equals: (Array with: (0 @ 0.0) with: (0 @ 20.0))