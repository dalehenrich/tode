sources
example02

| b |
	b := RTCircularTreeMapBuilder new.
	b shape
		color: Color transparent.
	b
		baseradius: 400;
		weight: [:n | n].
	b explore: 1
		using: [:n | n< 3 ifTrue: [Array with: n+1 with: n+2] ifFalse: [ #() ] ].
	
	b build.
	^ b view