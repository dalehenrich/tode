computing
calculateMedianStart: start end: end
	|result size |
	result := Float nan.
	size := (end asInteger - start asInteger + 1).
	size > 0 ifTrue: [ 
		size = 1 ifTrue: [ ^ values at: start asInteger ].
		(size % 2) = 1 ifTrue: [ 
			result := values at: (start + (size /2) asInteger )
			 ] ifFalse: [ | v1 v2 |
			v1 := values at: (start + (size / 2)-1) asInteger.
			v2 := values at: (start + (size / 2)) asInteger.
			result := (v1 + v2) / 2.0 ] ].
	^ result