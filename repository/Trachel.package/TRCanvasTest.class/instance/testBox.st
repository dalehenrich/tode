tests
testBox
	| rec box |
	rec := (50 @ 50 extent: 100 @ 50).
	box := canvas buildRectangle: rec color: Color purple.
	self assert: box encompassingRectangle center = rec center.

	box extent: 20 @ 20.
	self assert: box encompassingRectangle center = rec center.