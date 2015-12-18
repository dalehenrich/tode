events
step 
	"run a step of the force layout algorithm"
	| from to fp tp x y len k quad old |	
		
	"If there is no nodes, then there is not much to do"
	nodes ifEmpty: [ ^ self ].
	super step.
	edges do: [ :e | 
					from := e from. 
					fp := from position.
					to := e to. 
					tp := to position.
					x := tp x - fp x.
					y := tp y - fp y.
					len := ((x * x) + (y * y)) sqrt.
					((len closeTo: 0) not) ifTrue: [ 
						len :=  alpha * (self strengthOf: e) * ( len - (self lengthOf: e) ) / len.
						x := x * len.
						y := y * len.
						k := (weights at: from) / (( weights at: from) +( weights at: to )).
						to translateTo: ( tp x - (x * k) )@( tp y - (y * k) ).
						k := 1 -  k.
						from translateTo: ( fp x + (x * k) )@( fp y + (y * k) ) ] ].
			
		k := alpha * gravity.
		((k closeTo: 0) not) ifTrue: [ 
			x := center x.
			y := center y.
			nodes do: [ :ea | | pos |
					pos := ea position.
					ea translateTo: (pos x + ((x - pos x)* k)) @ (pos y + (( y - pos y )* k )) ] ].
				
		quad := RTQuadTree withAll: nodes.
		self accumulate: quad.
		nodes do: [ :e | 
			(self isFixed: e) 
				ifFalse: [ self repulse: e from: quad ]
				ifTrue: [ translator translateTopLeftOf: e to: (fixedNodes at: e) ] ].

		nodes do: [ :e | 
			old := e position.
			e translateTo: 
				(old x - (( (oldPositions at: e) x - old x ) * friction)) @ 
				(old y - (( (oldPositions at: e) y - old y ) * friction)).
			oldPositions at: e put: old.].