accessing
encompassingRectangle

	| w h transformation translation notRotatedRectangle rotatedRectangle topLeft topRight bottomRight bottomLeft p1 p2 p3 p4 |
	w := self notRotatedWidth.
	h := self notRotatedHeight.
	transformation := AthensAffineTransform new 
						rotateByDegrees: angle value;
						translateBy: ((w / -2) @ (h / 2)) asIntegerPoint.
	notRotatedRectangle  := 0 @ h negated corner: (w @ 0).
	topLeft := transformation transform: notRotatedRectangle topLeft.
	topRight := transformation transform: notRotatedRectangle topRight.
	bottomRight := transformation transform: notRotatedRectangle bottomRight.
	bottomLeft := transformation transform: notRotatedRectangle bottomLeft.
	
	p1 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p2 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	p3 := OrderedCollection new add: topLeft x; add: topRight x; add: bottomRight x; add: bottomLeft x; yourself.
	p4 := OrderedCollection new add: topLeft y; add: topRight y; add: bottomRight y; add: bottomLeft y; yourself.
	
	rotatedRectangle := 
		(p1 min @ p2 min) corner:
		(p3 max @ p4 max).
	translation := AthensAffineTransform new
					translateBy: self position asIntegerPoint.
	^ (translation transform: rotatedRectangle topLeft)
	 	corner: (translation transform: rotatedRectangle bottomRight)
	