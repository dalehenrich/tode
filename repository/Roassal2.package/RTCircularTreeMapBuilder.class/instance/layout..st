layout
layout: e
	
	| children |
	(e attributes includesKey: #children) ifFalse: [ ^ self ].
	
	children := e attributes at: #children.
	children isEmpty ifTrue: [ ^ self ].
	
	children do: [ :child | self layout: child ].
	self sortChildren: children.
	self layoutNodes: children
	