accessing
extent: aPoint
	"Set of the size of the canvas. Useful, for example, when the window is resized"
	extent := aPoint.
	self announce: TRResizeCanvasEvent