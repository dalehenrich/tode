visitor
visitSVGPath: aSVGPath
	|borderColor fillColor svgE|
	((aSVGPath color) isNil)
		ifTrue: [ fillColor := Color r: 0 g: 0 b: 0]
		ifFalse: [ fillColor := aSVGPath color].
	((aSVGPath strokePaint) isNil)
		ifTrue: [ borderColor := fillColor]
		ifFalse: [ borderColor := aSVGPath strokePaint].
	svgE := RTSVGPathEntity new element: (aSVGPath) path: (aSVGPath pathString) center: (self center) scale: (aSVGPath scale) fillColor: fillColor borderColor: borderColor width: 1.
	svgE addOn: stream using: self. 