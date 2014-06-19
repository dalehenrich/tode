editing keys
implementorsOfIt: aKeyboardEvent
	| aSelector |
	self lineSelectAndEmptyCheck: [ ^ self ].
	(aSelector := self selectedSelector) == nil
		ifTrue: [ ^ morph flash ].
	self model evaluate: 'browse method ' , aSelector asString.
	^ true