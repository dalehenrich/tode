opening
testOpening

	| window |
	window := RTView new openInWindowSized: 500 @ 300.
	self assert: window extent equals: 500 @ 300.
	window delete.