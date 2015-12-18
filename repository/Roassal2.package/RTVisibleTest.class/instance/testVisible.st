tests
testVisible
	"The center of e is outside the canvas"
	| v t visible e |
	v := RTView new.
	self assert: v canvas extent equals: 500 @ 500.
	
	e := (RTBox new size: 100) element.
	v add: e.
	e translateTo: 260 @ 260.

	t := false.
	visible := RTVisible new
					visibleBlock: [ :el | t := true ].
	e @ visible.
	self assert: t