shapes
composite: aBlock
	| newShape |
	newShape := RTCompositeShape new.
	aBlock value: newShape.
	shape := newShape.