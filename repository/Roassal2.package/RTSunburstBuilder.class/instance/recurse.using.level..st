utility
recurse: object using: aBlock level: level

	| children e list total |
	
	e := shapeBuilder elementOn: object.
	elements add: e.
	self interactions do: [ :i | e @ i ].
	children := aBlock rtValue: object.
	list := OrderedCollection new: children size.
	total := 0.
	children do: [ :childObject | 
		| n |
		n := self recurse: childObject using: aBlock level: level + 1.
		n attributes at: #parent put: e.
		total := total + (self weight rtValue: childObject ).
		list add: n. ].
	e attributes at: #children put: list.
	e attributes at: #depth put: level.
	level > maxLevel ifTrue: [ maxLevel := level ].
	e attributes at: #weight put: total.
	^ e.