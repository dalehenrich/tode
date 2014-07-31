menu commands
pasteAtEnd

	| interval |
	interval := self textMorph editor selectionInterval.
	(interval first > self inputMark and: [ interval first <= self text size ])
		ifTrue: [ ^ super paste ].
	self selectFrom: self text size + 1 to: self text size.
	super paste