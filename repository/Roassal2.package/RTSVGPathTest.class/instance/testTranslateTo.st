tests
testTranslateTo
	| v e |
	v := RTView new.
	e := (RTSVGPath new path: 'M200,200l100,0l0,100l-100,0z') element.
	v add: e.
	self assert: (e trachelShape includesPoint: 210@210).
	e translateTo: 0@0.
	self assert: (e trachelShape includesPoint: 200@200).
	self assert: (e trachelShape includesPoint: 0@0) not.