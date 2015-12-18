*roassal2
oldestMethod
	"We pick a method, and put the cache in it"
	| aMethod |
	aMethod := (self methods, self class methods) first.
	^ (aMethod properties includesKey: #oldestMethod)
		ifTrue: [ aMethod properties at: #oldestMethod ]
		ifFalse: [ | m |
			m := self computeOldestMethod.
			aMethod properties at: #oldestMethod put: m ]
