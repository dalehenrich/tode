tests
testBasic02

	| v e |
	v := RTView new.
	e := (RTBox new size: 50) element.
	e @ RTFocusElement animated.
	v add: e.

	e announce: TRMouseDoubleClick.