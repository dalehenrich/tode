position
testScaleSVG

	| svg rectangle scaledRectangle |
	svg := TRSVGPath new path: 'M 0 0 L 30 10 L 20 30 z'.
	rectangle := svg encompassingRectangle. 
	svg scaleBy: 2.0.
	scaledRectangle := svg encompassingRectangle.
	self assert: svg scale equals: 2.0 @ 2.0.
	self deny: rectangle = scaledRectangle.
	self assert: rectangle width * 2.0 equals: scaledRectangle width.
	self assert: rectangle height * 2.0 equals: scaledRectangle height.