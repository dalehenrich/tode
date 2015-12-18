algorithm
repulse: aNode from: aQuad

	| dx dy dn k p |
	
	dx := aQuad cx - aNode position x.
	dy := aQuad cy - aNode position y.
	
	((dx closeTo: 0) and: [ dy closeTo: 0 ] ) ifFalse: [ 
	
	dn := 1 / ((dx * dx) + (dy * dy)) sqrt.
	
	p := oldPositions at: aNode.
	aQuad node ~= aNode ifTrue: [ aQuad corner x - aQuad origin x * dn < theta ifTrue: [ k := aQuad charge * dn * dn.
																							oldPositions at: aNode put: p x - (dx * k) @ (p y - (dy * k) ).
																							^ self].
												
									(aQuad node isNil not and: [ dn < 1e9 ]) ifTrue: [ k := (self chargeOf: aQuad node) * dn * dn * alpha.
																					  oldPositions at: aNode put: p x - (dx * k) @ (p y - (dy * k) ) ] ]. ].
																			
	(aQuad charge closeTo: 0) not ifTrue: [ aQuad nodes do: [ :e | e isNil ifFalse: [ self repulse: aNode from: e ] ] ]