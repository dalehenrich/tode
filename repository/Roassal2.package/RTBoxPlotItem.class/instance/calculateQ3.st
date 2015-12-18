computing
calculateQ3
	| result size |
	result := Float nan.
	size := values size.
	size > 0 ifTrue: [ 
		size % 2 = 1 ifTrue: [ result := self calculateMedianStart: (size / 2)+2 end: size ]
		ifFalse: [ result := self calculateMedianStart: (size/2)+1 end: size. ]
		 ].
	^ result
	