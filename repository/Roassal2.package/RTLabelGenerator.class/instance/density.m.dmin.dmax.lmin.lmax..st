private
density: k m: m dmin: dmin dmax: dmax lmin: lmin lmax: lmax
	"* k		number of labels
	 * m		number of desired labels
	 * dmin	data range minimum
	 * dmax	data range maximum
	 * lmin	label range minimum
	 * lmax	label range maximum
	 * ^	density
	  
	 k-1 number of intervals between labels
	 m-1 number of intervals between desired number of labels
	 r   label interval length/label range
	 rt  desired label interval length/actual range"
	| r rt |
	r := (k -1)/(lmax - lmin).
	rt := (m - 1)/((lmax max: dmax) - (lmin min: dmin) ).
	^ 2 - ( (r/rt) max: (rt/r) ).