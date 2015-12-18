tests
testPopup

	| e |
	e := RTElement new.
	self deny: (e hasInteraction: RTPopup).
	e @ RTPopup.
	self assert: (e hasInteraction: RTPopup).