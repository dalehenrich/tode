shapes
testPositionWithShapes

	TRShape allSubclasses do: [ :c |
		self assert: c new position = (0 @ 0) ]