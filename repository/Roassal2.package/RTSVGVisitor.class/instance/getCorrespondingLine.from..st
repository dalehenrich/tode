utils
getCorrespondingLine: decorator from: lines
	lines do: [ :l |
		^(l class = TRBezierShape) 
			ifTrue: [ decorator to = l points last ifTrue: [ lines remove: l. Array with: l with: decorator ] ]
			ifFalse: [ decorator to = l to ifTrue: [ lines remove: l. Array with: l with: decorator ] ].
		 ].
	^nil