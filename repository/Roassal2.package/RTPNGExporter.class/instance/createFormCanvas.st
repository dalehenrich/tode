util
createFormCanvas
	"Return a new form"
	| form |
	form := FormCanvas extent: self viewExtent.
	form fillRectangle: self encompassingRectangle color: self trachelCanvas color.
	^ form