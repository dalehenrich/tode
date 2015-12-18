accessing
canvas: aSurface
	"aCanvas is a AthensCairoSurface"
	self shapesDo: [ :s | s canvas: aSurface ]