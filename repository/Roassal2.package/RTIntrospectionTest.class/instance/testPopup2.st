tests
testPopup2

	| e aPopup |
	e := RTElement new.
	aPopup := RTPopup text: 'zork'.
	e @ aPopup.
	self assert: (e getInteractionForClass: RTPopup) == aPopup.