public
centerMinus: c1 with: c0
	| inst |
	inst := RTVector new.
	inst x: c1 x - c0 x.
	inst y: c1 y - c0 y.
	^ inst.