computing
calculateQ1
	| result size |
	result := Float nan.
	size := values size.
	size > 0 ifTrue: [ 
		result := self calculateMedianStart: 1 end: (size /2). ].
	^ result
	