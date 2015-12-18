fun
dragonCurve
	"
	self new dragonCurve
	"
	| v curveDragon calc addLine center 
	color   lines |
	v := RTView new.
	v @ RTDraggableView.
	center := 0@0.
	lines := 0.
	"RTNColorLinearNormalizer future work"
	color:= [ [Color random] ].
	addLine := [ :p1 :p2 | | e1 e2 |
		e1 := RTBox elementOn: p1.
		e2 := RTBox elementOn: p2.
		e1 extent: 1@1.
		e2 extent: 1@1.
		e1 translateTo: p1.
		e2 translateTo: p2.
		v add: e1; add: e2.
		v add: (RTLine new color: color value; edgeFrom: e1 to: e2)
		 ].
	curveDragon := nil.
	curveDragon := [ :p1 :p2 :level :order |
		level = 0 ifTrue: [ addLine value: (center+p1) value: (center+p2). ]
		ifFalse: [ | cx cy px py l |
			cx := (p1 x + p2 x)/2.
			cy := (p1 y + p2 y)/2.
			px := (cx - (p2 y - cy)).
			py := (cy + (p2 x - cx)).
			l := level -1.
			order ifTrue: [ 
				curveDragon value: p1 value: px@py value: l value: order.
				curveDragon value: p2 value: px@py value: l value: order not ]
			ifFalse: [
				curveDragon value: p2 value: px@py value: l value: order not.
				curveDragon value: p1 value: px@py value: l value: order
				] ] ].
	calc := [ :extent :level| | p1 p2 |
		p1 := (extent x negated / 5)@(extent y negated / 4).
		p2 := (extent x / 3)@0.
		center := extent / 2.
		
		curveDragon value: p1 value: p2 value: level value: true ].
	
	calc value: 800@800 value: 13.
	v open.