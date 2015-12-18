utility
resizeWithoutRecursion: backElement for: elements
	| encompassingRectangle |
	encompassingRectangle := self encompassingRectangleOf: elements.
	self resizeWithoutRecursion: backElement bounds: encompassingRectangle.
