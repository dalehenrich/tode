actions
addedIn: aCanvas
	"Make sure we are in the center. This is apparently necessary for element Shape. The following code is not nice at all :-("

	self
		propagateElement;
		shapesDo: [ :s | s addedIn: aCanvas ];
		positionShapesAfterBeingAdded