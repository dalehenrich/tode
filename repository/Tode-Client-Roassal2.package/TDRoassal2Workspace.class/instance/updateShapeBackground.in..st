as yet unclassified
updateShapeBackground: anElement in: aView
	anElement width: (aView canvas extent x); height: (aView canvas extent y).
	anElement translateTo: (aView canvas extent x /2)@(aView canvas extent y /2)

