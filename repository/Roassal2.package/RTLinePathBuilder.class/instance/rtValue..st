*Roassal2
rtValue: anArgument
	| value |
	value := anArgument.
	(anArgument isKindOf: Association)
		ifTrue: [ 
			self tension: anArgument value.
			value := anArgument key. ].
	
	^ self interpolate: value.