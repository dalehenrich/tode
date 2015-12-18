tests
testIsVisible
	"The center of e is outside the canvas"
	| v e |
	v := RTView new.
	self assert: v canvas extent equals: 500 @ 500.
	
	e := (RTBox new size: 100) element.
	v add: e.
	e translateTo: 260 @ 260.

	self assert: e trachelShape isVisible