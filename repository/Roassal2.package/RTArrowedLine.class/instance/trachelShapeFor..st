public
trachelShapeFor: anEdge
	| lineTrachelShape headTrachelShape |
	lineTrachelShape := line trachelShapeFor: anEdge.
	headTrachelShape := head trachelShapeFor: anEdge.
	^ TRCompositeShape new 
			addShape: lineTrachelShape; 
			addShape: headTrachelShape; 
			yourself
	