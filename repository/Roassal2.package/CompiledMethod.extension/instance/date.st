*roassal2
date
	"Return the DateAndTime associated to me"
	^ (self properties includesKey: #date)
		ifTrue: [ self properties at: #date ]
		ifFalse: [ 
			| m |
			m := self computeDate.
			self properties at: #date put: m.
			m ]