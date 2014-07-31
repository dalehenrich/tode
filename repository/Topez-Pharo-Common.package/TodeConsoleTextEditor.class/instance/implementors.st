editing keys
implementors
	| aSelector |
	self lineSelectAndEmptyCheck: [ ^ false ].
	(aSelector := self selectedSelector) == nil
		ifTrue: [ 
			morph flash.
			false ].
	self model evaluate: 'browse method ' , aSelector asString.
	^ true