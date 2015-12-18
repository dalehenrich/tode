private
coverageMin: dmin max: dmax lmin: lmin lmax: lmax
	| a b c|
	a := dmax - lmax.
	b := dmin - lmin.
	c := 0.1 * (dmax - dmin).
	^ 1 - ( 0.5 * (((a * a) + (b * b))/ (c * c)) )
	