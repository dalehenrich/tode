sources
exampleGroupedLayout

	| view group1 group2 host1 host2 edgesGroup1 edgesGroup2 |
	view := RTView new.
	group1 := (RTBox new color: (Color blue alpha: 0.3); size: 30) elementsOn: (1 to: 10).
	group2 := (RTBox new color: (Color blue alpha: 0.3); size: 30) elementsOn: (1 to: 10).
	
	host1 := (RTBox new color: (Color green alpha: 0.3)) element.
	host2 := (RTBox new color: (Color green alpha: 0.3)) element.
	
	view addAll: group1; addAll: group2; add: host1; add: host2.
	
	edgesGroup1 := RTEdge 
		buildEdgesFromObjects: (1 to: 10) 
		from: [ :v | v //2 ] to: #yourself inView: view scope: group1.
	edgesGroup2 := RTEdge 
		buildEdgesFromObjects: (1 to: 10) 
		from: [ :v | v //2 ] to: #yourself inView: view scope: group2.

	
	RTTreeLayout on: group1 edges: edgesGroup1.
	RTTreeLayout on: group2 edges: edgesGroup2.
	
	RTNest new on: host1 nest: group1.
	RTNest new on: host2 nest: group2.
	
	RTHorizontalLineLayout on: (Array with: host1 with: host2).
	
	host1 @ RTDraggable.
	host2 @ RTDraggable.
	
	view canvas addMenu: 'In' callback: [ RTZoomInMove on: view ].
	view canvas addMenu: 'Out' callback: [ RTZoomOutMove on: view ].

	view @ RTDraggableView.
	
	^ view