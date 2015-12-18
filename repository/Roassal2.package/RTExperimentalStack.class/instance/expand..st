as yet unclassified
expand: data
	| n m k y0 o |
	n := data size.
	m := data first size.
	k := 1 / n.
	y0 := Array new: m.
	1 to: m do: [ :j | 
		o := 0.
		1 to: n do: [ :i| o:= o + (((data at: i) at: j) y) ].
		o isZero not 
			ifTrue: [ 
				1 to: n do: [:i| | v |
					v := (data at: i) at: j.
					v y: v y / o. ] ]
			ifFalse: [ 
				1 to: n do: [ :i |
					((data at: i) at: j) y: k ] ]
		].
	1 to: m do: [ :j | y0 at: j put: 0 ].
	
	^ y0