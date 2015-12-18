events-registering
highlightElements: elementsOrABlock
	"Highlight the elements, elementsOrABlock may either be a block (which takes as argument the selected element and return a list of elements"
	interactions add: [ :element | element @ (RTHighlightable highlightElements: (elementsOrABlock rtValue: element model)) ]