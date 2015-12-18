as yet unclassified
cacheElements: someElements edges: someEdges
	"This method is assuming all the elements belong to the same view"
	| view newElement group position |
	group := someElements asGroup.
	view := someElements anyOne view.
	newElement := (RTBitmap new form: (self getFormElements: group, someEdges asGroup)) element.
	position := group position.
	newElement translateTo: position.
	group remove.
	view add: newElement.