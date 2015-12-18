public
translateTopLeftTo: aPosition
	| center |
	center := self encompassingRectangle topLeft.
	self translateBy: (aPosition - center)