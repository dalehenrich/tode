public
indexOfNonLabelShapeIn: backElement
	| nonLabelShape |
	nonLabelShape := backElement shape allShapes detect: [ :aShape | aShape class ~~ RTLabel ].
	^ backElement shape allShapes indexOf: nonLabelShape