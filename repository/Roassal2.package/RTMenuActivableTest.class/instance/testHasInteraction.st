tests
testHasInteraction

	| e |
	e := RTElement new.
	self deny: (e hasInteraction: RTMenuActivable).
	e @ RTMenuActivable.
	self assert: (e hasInteraction: RTMenuActivable).