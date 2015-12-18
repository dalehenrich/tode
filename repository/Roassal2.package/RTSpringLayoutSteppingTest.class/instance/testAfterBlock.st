tests
testAfterBlock
	| t s |
	t := 0.
	s := RTSpringLayoutStepping new.
	s afterBlock: [ t := t + 1 ].
	self assert: t equals: 0.
	s refresh; refresh.
	self assert: t equals: 2.