public
interpolator: anObject
	interpolate := anObject.
	interpolateReverse := (anObject isKindOf: RTLinePathBuilder ) 
		ifTrue: [ lvar := interpolate closed ifTrue: [ 'M' ] ifFalse: 'L'.
			 interpolate reverse. ]
		ifFalse: [ interpolate ].
	