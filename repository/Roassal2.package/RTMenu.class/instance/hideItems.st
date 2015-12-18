as yet unclassified
hideItems
	self isOpen ifFalse: [ ^ self ].
	self isOpen: false.
	self isLocked: false.
	self items do: [:item |
		item rawmenu remove].
	menuBackground remove.
	self endHighlight.	