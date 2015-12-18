accessing
title

	^ title 
		ifNil: [ self selector ]
		ifNotNil: [ title ]