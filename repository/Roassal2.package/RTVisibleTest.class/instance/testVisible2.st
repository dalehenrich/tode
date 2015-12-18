tests
testVisible2
	"The center of e is within the canvas"
	| v t visible e |
	v := RTView new.
	self assert: v canvas extent equals: 500 @ 500.
	
	e := (RTBox new size: 100) element.
	v add: e.
	e translateTo: 248 @ 248.

	t := false.
	visible := RTVisible new
					visibleBlock: [ :el | t := true ].
	e @ visible.
	self assert: t