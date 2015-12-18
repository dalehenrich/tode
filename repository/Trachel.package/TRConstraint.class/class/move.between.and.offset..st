public - moving
move: aShape between: s1 and: s2 offset: aFloat
	^ aShape translateTo: ((s1 position * aFloat) + (s2 position * (1.0 - aFloat)))