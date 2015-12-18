sources
exampleNumber

	| b |
	b := RTTreeMapBuilder new.
	b shape 
		if: #even fillColor: Color lightGray;
		if: #odd fillColor: Color purple.
	b
		extent: 400@400;
		explore: 1
		using: [ :n | n< 8 ifTrue: [ Array with: n + 1 with:  n + 2 ] ifFalse: [ #() ] ];
		weight: [ :n | n ].
	b build.
	^ b view