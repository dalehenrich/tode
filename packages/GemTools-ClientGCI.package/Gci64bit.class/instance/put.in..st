Wrapper
put: anInteger in: aByteArray

	| x y int |
	int := anInteger asInteger.
	x := int bitAnd: 16rFFFFFFFF.
	y := int >> 32.
	aByteArray 
		unsignedLongAt: 1 
		put: x.
	aByteArray 
		unsignedLongAt: 5 
		put: y.
