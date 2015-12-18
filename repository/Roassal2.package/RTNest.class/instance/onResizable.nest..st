to be removed
onResizable: backElement nest: elements
	"PROBABLY THIS METHOD HAS TO BE DELETED"

	"public method"
	"backElement is the elements on which elements are layout-ed"
	"- position the elements above backElement. 
	 - resize backElement to encapsulate the elements
	 - perform a layout of the elements if a layout has been set
	 - make the inner elements draggable"
	
	layout ifNotNil: [ layout on: elements ].
	self centerOn: backElement elements: elements.
	self makeElements: elements draggableBy: backElement.
"	self makeElements: elements transformable: backElement."
	self makeElements: elements resizableWithoutRecursion: backElement.
