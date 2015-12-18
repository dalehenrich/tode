exporting
exportOnStream: fileStream
	|bounds|
	bounds := self fixedEncompassingRectangle.
	self stream: fileStream.
	self addStart: bounds.
	RTSVGVisitor visit: view on: stream with: self interactions canvas: bounds center: (marginX+paddingX)@(marginY + paddingY).
	self addEnd.