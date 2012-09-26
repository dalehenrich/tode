Wrapper
put: anInteger in: aByteArray

	| x y |
	x := anInteger bitAnd: 16rFFFFFFFF.
	y := anInteger >> 32.
	aByteArray 
		unsignedLongAt: 1 
		put: x.
	aByteArray 
		unsignedLongAt: 5 
		put: y.
