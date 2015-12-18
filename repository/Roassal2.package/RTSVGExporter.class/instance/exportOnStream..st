exporting
exportOnStream: fileStream
	| bounds |
	bounds := self fixedEncompassingRectangle.
	self stream: fileStream.
	self addStart: bounds.
	RTSVGVisitor visit: view on: stream canvas: bounds.
	self addEnd.