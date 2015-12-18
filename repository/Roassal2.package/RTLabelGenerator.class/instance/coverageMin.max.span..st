private
coverageMin: dmin max: dmax span: span
	| range r half|
	range := dmax - dmin.
	(span > range) ifTrue: [ 
		half := (span - range)/2.
		r := 0.1*range.
		^ 1 - (half * half / (r * r) )].
	^ 1.0