computing
calculateMedian
	| result size |
	result := Float nan.
	size := values size.
	size > 0 ifTrue: [ 
		(size % 2) = 1 ifTrue: [ 
			result := values at: (size/2 + 1) asInteger ] 
		ifFalse: [ |v1 v2|
			v1 := values at: size/2.
			v2 := values at: size/2+1.
			result := (v1 + v2)/2.0. ]
		 ].
	^ result.