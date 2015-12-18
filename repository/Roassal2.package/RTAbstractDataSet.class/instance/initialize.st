initialization
initialize
	super initialize.
	points := #().
	x := #yourself.
	y := #yourself.
	self resetMinAndMax.
 
	dotBuilder := RTShapeBuilder new.
	dotBuilder circle size: 5.
	
	"Maybe this can be lazily done"
	histogramBuilder := RTShapeBuilder new.
	histogramBuilder rectangle.
	
	"Maybe this can be lazily done"
	lineBuilder := RTShapeBuilder new.
	
	interaction := RTInteractionBuilder new.
	interaction popup.
	shouldConnect := false.
	
	elementActions := OrderedCollection new.