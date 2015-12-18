private
transformedEncompassingRectangle
	"Not all shapes are alredy using matrix. 
	For that reason we have this method."
	| basicRectangle rotatedRectangle topLeft topRight bottomRight bottomLeft p1 p2 p3 p4 |
	basicRectangle := self basicEncompassingRectangle.
	topLeft := matrix transform: basicRectangle topLeft.
	topRight := matrix transform: basicRectangle topRight.
	bottomRight := matrix transform: basicRectangle bottomRight.
	bottomLeft := matrix transform: basicRectangle bottomLeft.
	
	p1 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p2 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	p3 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p4 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	
	rotatedRectangle := 
		(p1 min @ p2 min) corner:
		(p3 max @ p4 max).
	^ rotatedRectangle