accessing
element: anElement text: aString at: aPoint color: aColor angle: anAngle
	self element: anElement.
	self content: aString.
	self x: aPoint x; y: aPoint y.
	self fillColor: aColor.
	self angle: anAngle.
	self fontSize: anElement fontSize.