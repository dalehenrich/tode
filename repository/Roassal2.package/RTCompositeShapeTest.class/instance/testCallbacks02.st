tests
testCallbacks02

	| compo ellipse v |
	compo := ((RTBox new size: 50; color: Color red; yourself)) element.
	ellipse := RTEllipse new size: 20; color: Color blue; element.
	"compo will have two callbacks after the call to stick:below:"
	TRConstraint stick: ellipse below: compo.
	v := RTView new.
	v add: compo; add: ellipse.

	self assert: ellipse trachelShape numberOfCallbacks equals: 0.
	self assert: compo trachelShape numberOfCallbacks equals: 2.
