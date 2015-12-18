util
createPointNameFrom: someObjects
	"Create the labels for the objects"
	| es |
	shapeBuilder ensure: RTLabel.
	es := shapeBuilder elementsOn: someObjects.
	"es @ RTHighlightable."
	self setUpInteractionFor: es.
	^ es