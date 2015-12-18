*roassal2
youngestMethod
	"We pick a method, and put the cache in it"
	| aMethod |
	aMethod := (self methods, self class methods) first.
	^ (aMethod properties includesKey: #youngestMethod)
		ifTrue: [ aMethod properties at: #youngestMethod ]
		ifFalse: [ | m |
			m := self computeYoungestMethod.
			aMethod properties at: #youngestMethod put: m ]
