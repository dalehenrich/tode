to be removed
resize: backElement for: elements
	| encompassingRectangle |
	encompassingRectangle := self encompassingRectangleOf: elements.
	self resize: backElement bounds: encompassingRectangle.
