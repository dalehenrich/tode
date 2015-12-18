tests
testBezierShape
	| b |
	b := TRBezierShape new points: (Array with: 10 @ 10 with: -20 @ 30 with: 50 @ -180).
	canvas addShape: b.
	b translateBy: 5 @ 6.
	self assert: b points = (Array with: 15 @ 16 with: -15 @ 36 with: 55 @ -174).
