tests
testCluster
	view := RTView new.
	view addAll: ((RTEllipse new size: 10) elementsOn: (Collection withAllSubclasses)).
	RTEdge buildEdgesFromObjects: Collection withAllSubclasses from: #superclass to: #yourself inView: view.
	RTClusterLayout on: view elements edges: view edges.
