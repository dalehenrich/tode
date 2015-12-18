to be removed
onTrachelShape: trachelShape nest: elements
	"public method"
	"backElement is the elements on which elements are layout-ed"
	"- position the elements above backElement. 
	 - resize backElement to encapsulate the elements
	 - perform a layout of the elements if a layout has been set
	 - make the inner elements draggable"

	self doLayoutIfNecessaryOn: elements.
	behavior on: trachelShape setNested: elements asGroup

	"self centerOnTrachelShape: trachelShape elements: elements.
	self makeElements: elements draggableByTrachelShape: trachelShape."
