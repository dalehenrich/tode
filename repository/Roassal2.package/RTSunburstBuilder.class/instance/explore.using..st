public
explore: anObject using: aBlock 
	| e |
	elements := OrderedCollection new.
	maxLevel := 0.
	e := self recurse: anObject using: aBlock level: 0.
	e attributes at: #parent put: nil.