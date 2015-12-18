as yet unclassified
silhouette: data
	| n m y0 sums o max|
	n := data size.
	m := data first size.
	y0 := Array new: m.
	sums := OrderedCollection new.
	max := 0.
	1 to: m do: [ :j | 
		o := 0.
		1 to: n do: [ :i | o:= o + (((data at: i) at: j) y) ].
		o > max ifTrue: [ max := o ].
		sums add: o ].
	1 to: m do: [ :j | y0 at: j put: (max - (sums at: j))/2 ].
	^ y0