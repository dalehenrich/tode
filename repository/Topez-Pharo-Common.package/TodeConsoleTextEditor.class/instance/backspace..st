typing/selecting keys
backspace: aKeyboardEvent
	| interval min|
	interval := self selectionInterval.
	min := interval extent < 0 ifTrue: [ interval last] ifFalse: [ interval first].
	(min > (self model textMorph inputMark) and: [ min < self text size or: [ interval extent < 0 ] ])
		ifTrue: [ ^ super backspace: aKeyboardEvent ].
	^ false