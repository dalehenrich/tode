as yet unclassified
stack: data
	| series points orders offsets n m o |
	data isNil ifTrue: [ ^ data ].
	(n := data size) isZero ifTrue: [ ^ data ].
	
	series := data collect: values.
	points := series collect: [ :d | | p |
		d collect: [:v | p := RTXPPoint new.
			p x: (xblock rtValue: v).
			p y: (yblock rtValue: v). 
			p. ] ].
	
	orders := order rtValue: points.
	series := orders collect: [ :i | series at: i ].
	points := orders collect: [ :i | points at: i ].
	offsets := offset rtValue: points.
	m := series first size.
	1 to: m do: [ :j | 
		o := offsets at: j.
		out value: (points first at: j) value: o.
		2 to: n do: [ :i | 
			o := o + ((points at: (i -1)) at: j) y.
			out value: ((points at: i) at: j) value: o ]
		 ].
	
	^ points.
	