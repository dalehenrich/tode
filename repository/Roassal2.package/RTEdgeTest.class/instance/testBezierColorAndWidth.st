tests
testBezierColorAndWidth
	| v shape l els |
	
	v := RTView new.
	shape := RTEllipse new size: 10; color: (Color red alpha: 0.3).
	els := (shape elementsOn: (1 to: 4)).
	v addAll: els .
	RTHorizontalLineLayout on: v elements.
	(els at: 1) translateBy: 0 @ 100.
	(els at: 2) translateBy: 100 @ 0.
	(els at: 3) translateBy: 200 @ 100.
	(els at: 4) translateBy: 300 @ 0.

	l := (RTBezierLine new controllingElements: v elements) edgeFrom: els first to: els last.
	v add: l.
	l shape width: 5.
	l shape color: Color green.
	
	self assert: l trachelShape width = 1.
	l updateShape.
	self assert: l trachelShape width = 5.
	self assert: l trachelShape strokePaint = Color green.