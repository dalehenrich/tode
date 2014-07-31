editing keys
senders
	| aSelector |
	self lineSelectAndEmptyCheck: [ ^ false ].
	(aSelector := self selectedSelector) == nil
		ifTrue: [ 
			morph flash.
			^ false ].
	self model evaluate: 'browse sender ' , aSelector asString.
	^ true