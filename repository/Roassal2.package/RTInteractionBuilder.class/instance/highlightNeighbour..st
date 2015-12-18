events-registering
highlightNeighbour: aBlock
	"Highlight the elements for which the model is given by 'aBlock rtValue: element', where 'element' is the current element"
	interactions add: [ :element | element @ (RTHighlightable highlight: aBlock) ]