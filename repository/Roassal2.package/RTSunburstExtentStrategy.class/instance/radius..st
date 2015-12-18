accessing
radius: depth
	| w2 maxDepth |
	w2 := wside/2.
	maxDepth := builder maxLevel.
	^ ((depth * w2 * w2) / (maxDepth + 1) ) sqrt