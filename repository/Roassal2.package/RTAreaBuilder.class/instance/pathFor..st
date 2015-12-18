computed accessing
pathFor: element
	| segments points0 points1 n datapoints d x y fx0 fy0 fx1 fy1 segment |
	datapoints := dataBlock rtValue: element model.
	n := datapoints size.
	segments :=OrderedCollection new.
	points0 := OrderedCollection new.
	points1 := OrderedCollection new.
	fx0 := x0.
	fy0 := y0.
	x := y := nil.
	fx1 := x0 == x1 ifTrue: [ [ x ] ] ifFalse: [ x1 ].
	fy1 := y0 == y1 ifTrue: [ [ y ] ] ifFalse: [ y1 ].
	segment := [ 
		segments 
			add: 'M'; 
			add: (interpolate rtValue: (points1->tension) );
			add: lvar;
			add: (interpolateReverse rtValue: (points0 reverse -> tension));
			add: 'Z'. ].
	
	1 to: n do: [ :i | 
		d := datapoints at: i.
		(defined rtValue: d) 
			ifTrue: [ 
				x := fx0 rtValue: d.
				y := fy0 rtValue: d.
				points0 add: x@y.
				points1 add: (fx1 rtValue: d)@ (fy1 rtValue: d) ] 
			ifFalse: [ 
				points0 ifNotEmpty: [ 
					segment value.
					points0 := OrderedCollection new.
					points1 := OrderedCollection new. ] ]
		].
	points0 ifNotEmpty: [ segment value. ].
	^ segments inject: ''  into: [ :str :s | str, s ].