shapes
labelledAs: aBlock
	| label oldShape |
	label := RTLabel new text: aBlock.
	oldShape := shape.
	shape := RTCompositeShape new.
	shape add: oldShape.
	shape add: label.
	
	shape vertical.
	shapeInitializer rtValue: shape.
	
	^ label