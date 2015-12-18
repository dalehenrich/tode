actions
translateTo: aPoint
	| dist |
	dist := aPoint - self encompassingRectangle center.
	self translateBy: dist.