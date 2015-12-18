opening
testOpeningInWindowSizedTitled

	| window |
	window := RTView new openInWindowSized: 500 @ 300 titled: 'Hello World'.
	self assert: window extent equals: 500 @ 300.
	window delete.