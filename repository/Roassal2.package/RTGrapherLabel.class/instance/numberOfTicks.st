accessing
numberOfTicks
	| ticks |
	min < 0 ifTrue: [ 
		ticks := max < 0 ifTrue: [ (max - min) abs ] ifFalse: [ max+min abs  ]
		 ] ifFalse: [ 
		ticks := max - min ].
	^ (ticks / step).
	