event map
mapAt: event removeValue: anObject
	| dict key |
	dict := self mapAt: event.
	key := dict keyAtValue: anObject ifAbsent: [ ^ self ].
	dict removeKey: key