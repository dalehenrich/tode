visitor
visitEllipseShape: anEllipse	
	|borderColor fillColor box svgE|
	((anEllipse color) isNil)
		ifTrue: [ fillColor := Color r: 0 g: 0 b: 0]
		ifFalse: [ fillColor := anEllipse color].
	((anEllipse strokePaint) isNil)
		ifFalse: [ borderColor := anEllipse strokePaint].
	box := self alignRectangle: (anEllipse encompassingRectangle).
	svgE := RTSVGOval new element: anEllipse box: box color: fillColor borderWidth: 1 borderColor: borderColor.
	svgE addOn: stream using: self.