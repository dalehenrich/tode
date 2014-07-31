editing keys
senders
	| aSelector |
	self lineSelectAndEmptyCheck: [ ^ self ].
	(aSelector := self selectedSelector) == nil
		ifTrue: [ ^ morph flash ].
	self model evaluate: 'browse sender ' , aSelector asString.
	^ true