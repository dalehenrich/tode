visitor
visitBoxShape: aBox
	|borderColor fillColor box svgE|
	((aBox color) isNil)
		ifTrue: [ fillColor := Color r: 0 g: 0 b: 0]
		ifFalse: [ fillColor := aBox color].
	((aBox strokePaint) isNil)
		ifFalse: [ borderColor := aBox strokePaint].
	box := self alignRectangle: (aBox encompassingRectangle).
	svgE := RTSVGRectangle new element: aBox box: box fillColor: fillColor borderWidth: 1 borderColor: borderColor.
	svgE addOn: stream using: self. 