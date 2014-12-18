as yet unclassified
keyStroke: evt
	| interval |
	(evt commandKeyPressed or: [ evt controlKeyPressed ])
		ifTrue: [ ^ super keyStroke: evt ].
	interval := self textMorph editor selectionInterval.
	(interval first > self inputMark and: [ interval first <= self text size ])
		ifTrue: [ ^ super keyStroke: evt ].
	self selectFrom: self text size + 1 to: self text size.
	^ super keyStroke: evt