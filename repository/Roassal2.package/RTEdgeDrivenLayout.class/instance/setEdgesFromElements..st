accessing
setEdgesFromElements: elements 
	| view |
	elements isEmpty ifTrue: [ ^ self ].
	
	view := elements anyOne view.
	view ifNil: [ ^ self ].
	self edges: (view edges select: [ :el | 
		(el isUsedInLayout and: [ elements includes: el from ]) and: [ elements includes: el to ] ]).
	