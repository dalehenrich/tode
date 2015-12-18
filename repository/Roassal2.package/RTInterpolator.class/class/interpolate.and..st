as yet unclassified
interpolate: a and: b
	| clazz |
	clazz := self interpolatorFor: b.
	
	^ clazz new start: a; stop: b .
		