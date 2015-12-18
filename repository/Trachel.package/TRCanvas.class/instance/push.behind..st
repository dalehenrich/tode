actions
push: aShape behind: anotherShape
	| index |
	aShape remove.
	index := anotherShape indexInCanvas.
	aShape addedIn: self atIndex: index.
	aShape canvas: self 