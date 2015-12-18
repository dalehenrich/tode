accessing
allColor: aColor
	"Set color of all shapes"
	self shapesDo: [ :s | s color: aColor ]