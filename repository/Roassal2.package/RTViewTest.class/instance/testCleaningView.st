tests
testCleaningView

	| v e |
	v := RTView new.
	e := (RTBox new size: 80) elementOn: 'Hello World'.
	v add: e.
	e @ RTLabelled.

	v cleanAll.
	self assert: v numberOfElements equals: 0.
	self assert: v canvas numberOfFixedShapes equals: 0.
	self assert: v canvas numberOfShapes equals: 0.
	