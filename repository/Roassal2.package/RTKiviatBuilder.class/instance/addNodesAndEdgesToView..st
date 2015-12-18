adding
addNodesAndEdgesToView: aKiviatNode
"add to the view the chart nodes created"
	( polygons = #activated ) ifTrue: [ view add: aKiviatNode polygonElement ].
	view addAll: aKiviatNode edgeKiviatElements. 
	view addAll: aKiviatNode nodeKiviatElements.
		
