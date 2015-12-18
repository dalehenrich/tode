resizing
extent: newExtentT

	| newExtent oldExtent encompassingRectangle |
	newExtent := newExtentT max: 1 @ 1.
	encompassingRectangle := self encompassingRectangle.
	oldExtent := encompassingRectangle extent.
	
	"Make top left to 0 @ 0"
	self translateBy: encompassingRectangle topLeft negated.
	
	"Resizing and moving the position of each element"
	self do: [ :element |
		element translateTo: (element position * newExtent / oldExtent).
		element extent: (element extent * newExtent / oldExtent).
	].
	
	"Move back all the element to the original position"
	self translateBy: encompassingRectangle topLeft.
	
	
	