layout
squarify: children inRectangle: aTreeRectangle

	| elementsToLayout |
	children isEmpty ifTrue: [ ^ self  ].
	self rectangle: aTreeRectangle.
	elementsToLayout := self prepareElementsForLayout: children inRectangle: aTreeRectangle.
	self 
		squarify: elementsToLayout
		currentRow: OrderedCollection new
		remainingSpace: (aTreeRectangle width min: aTreeRectangle height).