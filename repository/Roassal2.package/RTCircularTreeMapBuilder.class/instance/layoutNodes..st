private
layoutNodes: children
	"
	RTCircularTreeMapExample new example01
	"
	| size circles bounds firstCircle cbounding circle distance   scale |
	size := children size.
	size > 100 ifTrue: [ size := 100 ].
	circles := OrderedCollection new: size.
	size = 0 ifTrue: [ ^ self ].
	
	bounds := RTBounds new max: 100.
	
	firstCircle := RTCircleTree new r: (self weight2rad: (self weightOf: children first)).
	circles add: firstCircle.
	cbounding := bounds push: firstCircle index: 1.
	size > 1 ifTrue: [ 
		circle  := RTCircleTree new r: (self weight2rad: (self weightOf: children second)) .
		circle translateBy: firstCircle center.
		circle translateBy: (RTVector new x: firstCircle r + circle r y: 0).
		circles add: circle.
		cbounding := bounds push: circle index: 2.
		size > 2 ifTrue: [ 
			| gaps closest gap ncircles |
			gaps := OrderedCollection new.
			gaps add: (RTGapTree new c1: firstCircle c2: circle).
			gaps add: (RTGapTree new c1: circle c2: firstCircle).
			ncircles := 2.
			closest := nil.
			gap := nil.
			(3 to: size) do: [ :i | | arr |
				distance := Float fmax.
				closest := nil.
				gap := nil.
				arr := self findBestGapIn: gaps children: children index: i 
					cbounding: cbounding bounds: bounds circles: circles 
					distance: distance closest: closest gap: gap ncircles: ncircles.
				
				distance := arr first.
				closest := arr second.
				gap := arr third.
				
				gaps remove: gap.
				gap addGapsTo: gaps closest: closest.
				circles add: closest.
				ncircles := ncircles + 1.
				(cbounding r < (distance + closest r)) 
					ifTrue: [ cbounding := bounds push: closest index: ncircles  ].
				
			] ] ].

	scale := 1/ cbounding r.
	(1 to: size) do: [ :i | | c |
		c := circles at: i.
		c translateBy: (cbounding center scaleBy: -1).
		c scaleFull: scale.
		(children at: i) attributes at: #circle put: c.
	 ].
	
	^ circles.