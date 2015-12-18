hooks
renderIn: aView
	
	((kiviatMetrics size = 0) | (axisBuilt = true)) ifFalse: [ self buildAxis ].
	self resetCreatedElements.
	
	"a chart node is represented by a set of elements according to the metrics values and connected by edges."
	objects do: [ :p | kiviatNodes detect: [:k | k named = p] ifNone: [ 
			| kn |
			kn := (RTKiviatNode new values:(kiviatMetrics collect: [ :m | m block rtValue: p ]); named: p; shapeNode: self shape).
			self node: kn.
			( polygons = #activated ) ifTrue: [ self executePolygonNode: kn].
			self addNodesAndEdgesToView: kn.
			] 
		].
	
	( highlight = #activated ) ifTrue: [ self executeHighlight ].
		
	"globalBuilder executeOn: self createdElements."

