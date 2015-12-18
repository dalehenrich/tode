private - utility
ratioOf: anObject
	| i |
	i := objects indexOf: anObject.
	i isZero ifTrue: [ ^ 0 ].
	^ (values at: i) / sum
