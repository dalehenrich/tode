as yet unclassified
wiggle: data
	| n x m s1 s2 s3 dx o o0 y0 |
	n := data size.
	x := data first.
	m := x size.
	y0 := Array new: m.
	y0 at: 1 put: (o := o0 := 0).
	2 to: m do: [ :j | 
		s1 := 0.
		1 to: n do: [ :i | s1 := s1 + ((data at: i) at: j) y ].
		s2 := 0.
		dx := (x at: j) x - (x at: (j-1)) x.

		1 to: n do: [ :i |
			s3 := (((data at: i) at: j) y - ((data at: i) at: (j-1)) y)/ (2*dx).
			1 to: (i-1) do: [ :k | 
				s3 := s3 + 
				( (((data at: k) at: j) y - ((data at: k) at: (j-1)) y )/dx ) ].
			s2 := s2 + (s3 * ((data at: i) at: j) y). ].
		
		y0 at: j put: ( o := s1 isZero ifTrue: [ 0 ] ifFalse: [s2 / s1 * dx ]).
		o < o0 ifTrue: [ o0 := o ].
		].
	
	1 to: m do: [ :j | y0 at: j put: ((y0 at: j)- o0)].
	^ y0.