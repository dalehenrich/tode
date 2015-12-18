computing
children: element
	(element attributes includesKey: #children) ifTrue: [ 
		^ element attributes at: #children ]
	ifFalse: [ ^ #() ].