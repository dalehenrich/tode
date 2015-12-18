tests
testHighlightable

	| e |
	e := RTElement new.
	self deny: (e hasInteraction: RTHighlightable).
	e @ RTHighlightable.
	self assert: (e hasInteraction: RTHighlightable).