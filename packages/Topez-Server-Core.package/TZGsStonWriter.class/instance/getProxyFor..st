public
getProxyFor: anObject
	| obj |
	obj := super getProxyFor: anObject.
	obj class = TZProxyGemStone
		ifTrue: [ oops add: obj; add: anObject ].
	^obj