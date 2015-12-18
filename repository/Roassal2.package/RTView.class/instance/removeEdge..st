actions
removeEdge: anEdge
	"Remove an edge from the view"
	edges remove: anEdge ifAbsent: [ ].
	anEdge trachelShape remove.