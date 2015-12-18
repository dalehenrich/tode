public
colors: nbOfColors 
	
	|palette scheme|
	palette := self palette.
	scheme := palette keys atRandom.
	
	^ self colors: nbOfColors scheme: scheme.
	