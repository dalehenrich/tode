point inclusion
testIncludesPointBasic
	| v e |
	v := RTView new.
	e := (RTSVGPath new path: 'M 100 100 L 300 100 L 200 300 z') element.
	v add: e.
	self assert: (e trachelShape includesPoint: 200@200).
	self assert: (e trachelShape includesPoint: 200@80) not