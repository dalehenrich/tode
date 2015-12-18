visitor
visitPolygonShape: aPolygon	
	|borderColor fillColor box svgE|
	((aPolygon color) isNil)
		ifTrue: [ fillColor := Color r: 0 g: 0 b: 0]
		ifFalse: [ fillColor := aPolygon color].
	((aPolygon strokePaint) isNil)
		ifFalse: [ borderColor := aPolygon strokePaint].
	box := self alignRectangle: (aPolygon encompassingRectangle).
	svgE := RTSVGPolygon new element: aPolygon box: box color: fillColor borderWidth: 1 borderColor: borderColor.
	svgE addOn: stream using: self.