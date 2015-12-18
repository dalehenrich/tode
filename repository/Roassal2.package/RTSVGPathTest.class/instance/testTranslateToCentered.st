tests
testTranslateToCentered
	| v e rectangle |
	v := RTView new.
	e := (RTSVGPath new centeredPath: 'M200,200l100,0l0,100l-100,0z') element.
	rectangle := (Rectangle encompassing: (Array with: 200@200 with: 300@200 with: 300@300 with: 200@300)).
	v add: e.
	self deny: (e trachelShape includesPoint: 200@200).
	self assert: (e trachelShape includesPoint: 0@0).
	e translateTo: rectangle center.
	self assert: (e trachelShape includesPoint: 200@200).
	self deny: (e trachelShape includesPoint: 0@0).