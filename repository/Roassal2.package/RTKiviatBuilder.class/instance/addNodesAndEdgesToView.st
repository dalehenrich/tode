adding
addNodesAndEdgesToView
"add to the view the chart nodes created"
	kiviatNodes do: [ :kn |
		view addAll: kn nodeKiviatElements.
		view addAll: kn edgeKiviatElements. 
		( polygons = #activated ) ifTrue: [ view add: kn polygonElement ].
		]