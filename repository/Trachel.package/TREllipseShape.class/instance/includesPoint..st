testing
includesPoint: aPoint
	"Implementation is taken over from EllipseMorph>>containsPoint:"
	| invertedPoint radius other delta xOverY t1 t2 |
	invertedPoint := matrix inverseTransform: aPoint.
	(rectangle containsPoint: invertedPoint) ifFalse: [ ^ false ]. "quick elimination"
	radius := rectangle height asFloat / 2.
	other := rectangle width asFloat / 2.
	delta := invertedPoint - rectangle topLeft - (other@radius).
	xOverY := rectangle width asFloat / rectangle height asFloat.
	t1 := (delta x asFloat / xOverY) squared + delta y squared.
	t2 := radius squared.
	^ (t1 < t2)  or: [ t1 closeTo: t2 ].