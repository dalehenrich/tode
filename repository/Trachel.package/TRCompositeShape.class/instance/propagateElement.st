actions
propagateElement
	"Make all the shape aware of the element"
	self shapesDo: [ :s | s element: self element ]