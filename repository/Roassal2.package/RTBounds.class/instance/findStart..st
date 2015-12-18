public
findStart: circle
	| high low probe |
	
	high := circles size +1.
	low := 1.
	[ (high - low) > 1 ] whileTrue: [ 
		probe := ((high + low )/2) floor.
		(RTCircleTree doIntersect: circle with: (circles at: probe)) 
			ifTrue: [ high := probe ]
			ifFalse: [ low := probe ]
	 ].
	^ indeces at: low.
	