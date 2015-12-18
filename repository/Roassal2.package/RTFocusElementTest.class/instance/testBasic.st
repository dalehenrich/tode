tests
testBasic

	| v e |
	v := RTView new.
	e := (RTBox new size: 50) element.
	e @ RTFocusElement.
	v add: e.

	e announce: TRMouseDoubleClick.