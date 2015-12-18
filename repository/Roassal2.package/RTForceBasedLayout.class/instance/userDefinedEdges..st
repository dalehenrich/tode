public
userDefinedEdges: aCollectionOfEdges
	"useful to tell to the layout which edges have to be used for the layout"
	userDefinedEdges := aCollectionOfEdges select: [ :e |
		(nodes includes: e from) and: [ nodes includes: e to ] ]
	