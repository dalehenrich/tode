actions
positionShapesAfterBeingAdded
	| p |
	shapeAndOffsets do: [ :tuple | tuple first translateTo: tuple second ].	
		
	"Make sure we are in the center. This is apparently necessary for element Shape. The following code is not nice at all :-("
	p := self position negated.
	(shapeAndOffsets anySatisfy: [ :tupple | tupple first isKindOf: TRAbstractLineShape ])
		ifFalse: [ self translateBy: p ]