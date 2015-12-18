tests
testCallbacks

	| compo ellipse v shapes |
	compo := ((RTBox new size: 50; color: Color red; yourself) + RTBox new) element.
	ellipse := RTEllipse new size: 20; color: Color blue; element.
	"compo will have two callbacks after the call to stick:below:"
	TRConstraint stick: ellipse below: compo.
	v := RTView new.
	v add: compo; add: ellipse.

	self assert: ellipse trachelShape numberOfCallbacks equals: 0.
	self assert: compo trachelShape numberOfCallbacks equals: 2.
	
	shapes := compo trachelShape shapes.
	self assert: shapes first numberOfCallbacks equals: 2