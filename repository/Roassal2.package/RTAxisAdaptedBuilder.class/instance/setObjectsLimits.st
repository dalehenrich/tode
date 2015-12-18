as yet unclassified
setObjectsLimits
	
	minX := (objects collect: [:o | (o position x) - (o width /2 )]) min.
	maxX := (objects collect: [:o | (o position x) + (o width /2 )]) max.
	
	minY := (objects collect: [:o | (o position y) - (o height /2 )]) min.
	maxY := (objects collect: [:o | (o position y) + (o height /2 )]) max.