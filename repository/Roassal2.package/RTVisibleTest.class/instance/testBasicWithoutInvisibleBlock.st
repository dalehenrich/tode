tests
testBasicWithoutInvisibleBlock

	| v e t |
	v := RTView new.
	e := RTBox element.
	v add: e.
	t := 0.
	e @ (RTVisible new 
			visibleBlock: [ :el | t := t + 1 ]).

	self assert: t equals: 1.
	e translateBy: 5 @ 5.
	self assert: t equals: 1.
	
	e translateTo: 1000 @ 1000.
	self assert: t equals: 1.