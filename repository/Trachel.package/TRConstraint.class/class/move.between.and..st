public - moving
move: aShape between: s1 and: s2
	^ aShape translateTo: (s1 position + s2 position) /2 