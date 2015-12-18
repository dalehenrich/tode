tests - nodes
testColor

	| view |
	b node: 1.
	b shape rectangle.
	b node: 2.
	b build.
	view := b view.

	self assert: view elements first trachelShape color equals: view elements second trachelShape color